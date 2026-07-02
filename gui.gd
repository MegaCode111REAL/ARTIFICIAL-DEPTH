extends Node

var tween: Tween

func get_blackout_panel() -> Panel:
	var scene = get_tree().current_scene
	
	if scene == null:
		return null
	
	var gui_node = scene.get_node_or_null("GUI")
	if gui_node == null:
		return null
	
	var panel = gui_node.get_node_or_null("black")
	
	return panel

func _ready() -> void:
	print('test')
	var blackout_panel = get_blackout_panel()
	if blackout_panel == null:
		push_warning("Blackout panel not found!")
		return
	

func blackout(duration := 1.0):
	var blackout_panel = get_blackout_panel()
	if blackout_panel == null:
		push_warning("Blackout panel not found!")
		return
	
	print("Panel:", blackout_panel)
	print("Inside tree:", blackout_panel.is_inside_tree())
	print("Alpha:", blackout_panel.modulate.a)

	if tween:
		tween.kill()

	tween = blackout_panel.create_tween()
	tween.tween_property(blackout_panel, "modulate:a", 1.0, duration)
	await get_tree().process_frame
	await tween.finished
	tween = null


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
