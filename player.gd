extends CharacterBody3D

const SPEED = 6.0
const JUMP_VELOCITY = 6.0
const GRAVITY = 20.0
const MOUSE_SENS = 0.0025

@export var interact_distance := 3.0

var currentInteractable = null
var mode_2d = false
var last_valid_platform = null
var flat_overlaps = []
var falling_out := false
var last_print := ""

@onready var head = $Head
@onready var loaded_chunks = $"../LoadedChunks"
@onready var level1 = loaded_chunks.get_child(1)
@onready var fps_camera = $Head/Camera3D
@onready var capsule_collision = $CollisionShape3D
@onready var box_collision = $BoxCollisionShape
@onready var ortho_camera = $OrthoRig/OrthoCamera
@onready var ortho_rig = $OrthoRig
@onready var collider = $CollisionShape3D
@onready var env2d = preload("res://world-2d.tres")
@onready var env3d = preload("res://world.tres")
@onready var interact_label = $"../GUI/PressEDialogue"
var normal_scale = Vector3(1, 1, 1)
var flat_scale = Vector3(1, 1, 200)

func _on_body_entered(body):
	print(body.name)

func _on_body_exited(body):
	print(body.name)

func timer(seconds: float) -> void:
	# Creates a one-shot timer in the scene tree and awaits its timeout
	await get_tree().create_timer(seconds).timeout

func _ready():
	capsule_collision.disabled = false
	box_collision.disabled = true
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	fps_camera.current = true
	ortho_camera.current = false
	
	await timer(1)
	set_interactable(get_node("../LoadedChunks/Level1/paper"))


func _unhandled_input(event):
	if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED and ortho_camera.current == false:
		rotate_y(-event.relative.x * MOUSE_SENS)
		head.rotate_x(-event.relative.y * MOUSE_SENS)

		head.rotation.x = clamp(
			head.rotation.x,
			deg_to_rad(-85),
			deg_to_rad(85)
		)
		ortho_rig.rotation_degrees = Vector3(0, 0, 0)
		box_collision.rotation_degrees = Vector3(0, 0, 0)

	if event.is_action_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _input(event):
	if event is InputEventMouseButton:
		if Input.mouse_mode != Input.MOUSE_MODE_CAPTURED:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

	if Input.is_action_just_pressed("toggle_dimension"):
		toggle_dimension()


func _physics_process(delta):
	if !falling_out and global_position.y < -20:
		falling_out = true
		await gui.blackout(1.0)
		await get_tree().create_timer(0.5).timeout
		get_tree().quit()
	
	if !is_on_floor():
		velocity.y -= GRAVITY * delta

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var input_dir = Input.get_vector(
		"move_left",
		"move_right",
		"move_forward",
        "move_back"
	)

	var move_dir = (
		transform.basis *
		Vector3(input_dir.x, 0, input_dir.y)
	).normalized()

	if move_dir:
		velocity.x = move_dir.x * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if move_dir and !mode_2d:
		velocity.z = move_dir.z * SPEED
	else:
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
	for i in range(get_slide_collision_count()):
		var collision = get_slide_collision(i)
		var body = collision.get_collider()

		if body != self:
			if (body.global_position.y - 0.2) < (global_position.y - 1):
				if mode_2d:
					last_valid_platform = body
					if not last_print == body.name:
						print("Saved: ", body.name)
						last_print = body.name
	# Example:
	# Set currentInteractable somewhere else:
	#
	# currentInteractable = $node3d/object/MeshInstance3D
	# currentInteractable = null
	
	update_interaction_ui()
	
	if Input.is_action_just_pressed("interact"):
		try_interact()

func update_interaction_ui():
	if currentInteractable == null or mode_2d:
		interact_label.visible = false
		return


	# make label follow object
	var screen_pos = fps_camera.unproject_position(
		currentInteractable.global_position + Vector3(0, 0.1, 0)
	)

	interact_label.position = screen_pos - (interact_label.size / Vector2(2, 2))

	interact_label.visible = true

func try_interact():

	if currentInteractable == null:
		print("try interact but null")
		return


	# distance check ONLY HERE
	var distance = global_position.distance_to(
		currentInteractable.global_position
	)


	if distance > interact_distance:
		return



	# object name decides interaction
	match currentInteractable.name:

		"paper":
			print('Paper!')
		_:
			print(
				"No interaction for ",
				currentInteractable.name
			)

func can_switch_to_2d() -> bool:
	var space = get_world_3d().direct_space_state
	var query = PhysicsRayQueryParameters3D.create(
		global_position,
		global_position + Vector3(0, 0, 0) # replace with 2D target direction if needed
	)

	query.exclude = [self]

	var result = space.intersect_ray(query)

	return result.is_empty()

func set_interactable(object):
	print("Set interactable:", object)
	currentInteractable = object


func clear_interactable():
	currentInteractable = null

func teleport_player_to_top(player: CharacterBody3D, object: StaticBody3D):
	var collision := object.get_node("CollisionShape3D")

	if collision == null:
		push_error("No CollisionShape3D!")
		return

	if !(collision.shape is BoxShape3D):
		push_error("Collision shape must be BoxShape3D!")
		return

	var box := collision.shape as BoxShape3D
	var half_size = box.size * 0.5

	# Object position
	var obj_pos = object.global_position

	# Calculate world-space bounds
	@warning_ignore("unused_variable")
	var min_y = obj_pos.y - half_size.y
	var max_y = obj_pos.y + half_size.y

	var min_z = obj_pos.z - half_size.z
	var max_z = obj_pos.z + half_size.z

	# Keep current player position
	var new_pos = player.global_position

	# Clamp to closest point on the object
	new_pos.y = max_y
	new_pos.z = clamp(player.global_position.z, min_z, max_z)

	# Don't change X
	# new_pos.x stays the same

	# Add a tiny offset so the player isn't inside the floor
	new_pos.y += 0.05

	player.global_position = new_pos

func toggle_dimension():
	rotation_degrees = Vector3(0,0,0)
	print(box_collision.disabled)
#	if can_switch_to_2d():
#		print("NO SWITCHING")
#		return
	if mode_2d and last_valid_platform:
		teleport_player_to_top(self, last_valid_platform)
	
	mode_2d = !mode_2d
#	get_parent().get_child(2).environment.fog = !mode_2d
	if mode_2d:
		get_parent().get_child(2).environment = env2d
	else:
		get_parent().get_child(2).environment = env3d

	fps_camera.current = !mode_2d
	ortho_camera.current = mode_2d

	box_collision.disabled = !mode_2d
	
	if !mode_2d:
		print("Teleported to: ", global_position)
