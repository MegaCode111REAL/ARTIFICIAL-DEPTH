extends Node

var fps = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var scene = get_tree().current_scene
	if not scene:
		return
	var fps_panel = get_tree().current_scene.get_node_or_null("FPSPanel")
	var fps_label = get_tree().current_scene.get_node_or_null("FPSPanel/Label")

	var current_fps: float = round(1.0 / delta)
	fps = round(lerp(float(fps), current_fps, 0.1))

	if fps_panel and fps_label and Settings.show_fps:
		fps_panel.visible = true
		fps_label.text = "FPS: " + str(fps)
	elif fps_panel and not Settings.show_fps:
		fps_panel.visible = false
