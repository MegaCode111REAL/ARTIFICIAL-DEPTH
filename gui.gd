extends Node

var tween: Tween
var blackout_tween: Tween

func get_blackout_panel() -> Panel:
	var scene = get_tree().current_scene
	
	if scene == null:
		return null
	
	var gui_node = scene.get_node_or_null("GUI")
	print(gui_node)
	if gui_node == null:
		return null
	
	var panel = gui_node.get_node_or_null("black")
	print(panel)
	
	return panel

func show_paper(title: String, text: String):
	var scene = get_tree().current_scene
	
	if scene == null:
		return null
	
	var gui_node = scene.get_node_or_null("GUI")
	if gui_node == null:
		return null
	
	var paper = gui_node.get_node_or_null('Paper')
	if paper == null:
		print("Paper is null")
		return
	var title_object = paper.get_node_or_null('Paper').get_node('VBoxContainer').get_node('CenterContainer').get_node('Title')
	var text_object = paper.get_node_or_null('Paper').get_node('VBoxContainer').get_node('text')
	paper.modulate.a = 0
	Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
	title_object.text = title
	text_object.text = text
	paper.visible = true
	await fade(0.3, paper, 1)
	

func _ready() -> void:
	var blackout_panel = null #get_tree().current_scene.get_node_or_null("GUI").get_node_or_null("black")
	if blackout_panel == null:
		push_warning("Blackout panel not found!")
		return
	

func fade(duration: float, object: Node, end_value: int):
	var fade_obj = object
	if fade_obj == null:
		print("Cannot fade: ", object)
		return
	
	if tween:
		tween.kill()
	
	tween = fade_obj.create_tween()
	print('fading')
	tween.tween_property(fade_obj, "modulate:a", end_value, duration)
	await get_tree().process_frame
	await tween.finished
	print('faded')
	tween = null

func blackout(duration := 1.0):
	var blackout_panel = get_blackout_panel()
	if blackout_panel == null:
		push_warning("Blackout panel not found!")
		return
	

	if blackout_tween:
		blackout_tween.kill()

	blackout_tween = blackout_panel.create_tween()
	blackout_tween.tween_property(blackout_panel, "modulate:a", 1.0, duration)
	await get_tree().process_frame
	await blackout_tween.finished
	blackout_tween = null


func clearBlackout(duration := 1.0):
	var blackout_panel = get_blackout_panel()
	if blackout_panel == null:
		push_warning("Blackout panel not found!")
		return

	if tween:
		tween.kill()

	tween = create_tween()
	tween.tween_property(blackout_panel, "modulate:a", 0.0, duration)
	await tween.finished
	tween = null
