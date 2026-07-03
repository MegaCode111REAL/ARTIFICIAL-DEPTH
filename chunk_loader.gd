extends Node

@onready var loaded_chunks = $"../LoadedChunks"

var loaded = {}

func _ready():
	load_chunk("res://levels/Level1.tscn", Vector3(0,0,0))
	#await wait_for_player($"../LoadedChunks/Level1/Area3D")

func wait_for_player(area: Area3D):
	var body = await area.body_entered

	# Optional: check it's the player
	if body.get_parent().name == "player":
		print("Player entered ", area)

func load_chunk(path: String, pos: Vector3):
	if loaded.has(path):
		return

	var scene = load(path)
	var instance = scene.instantiate()

	instance.position = pos

	loaded_chunks.add_child(instance)

	loaded[path] = instance

func unload_chunk(path: String):
	if !loaded.has(path):
		return

	loaded[path].queue_free()
	loaded.erase(path)
