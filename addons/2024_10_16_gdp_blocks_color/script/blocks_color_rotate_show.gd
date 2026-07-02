extends Node

@export var what_to_rotate:Node3D
@export var rotation_axis: Vector3 = Vector3.UP
@export var rotation_speed_in_degree: float = 90

func _process(delta: float) -> void:
	var rotation_speed_rad = rotation_speed_in_degree * delta * PI / 180.0
	what_to_rotate.rotate(rotation_axis, rotation_speed_rad)
