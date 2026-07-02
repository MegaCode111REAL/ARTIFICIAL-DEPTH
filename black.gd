extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(self.modulate.a)
	self.modulate.a = 0.0
	print(self.modulate.a)
