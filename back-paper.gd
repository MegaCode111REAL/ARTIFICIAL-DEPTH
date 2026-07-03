extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect('pressed', hide_parent)
	pass # Replace with function body.

func hide_parent():
	get_parent().modulate.a = 0
	get_parent().visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
