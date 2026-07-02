extends Node

@export var color_to_use: BlocksColorResource

@export var label:Label
@export var label_color: BlocksColorResource.ColorType

@export var mesh_material: MeshInstance3D
@export var use_lit:bool
@export var material_color: BlocksColorResource.ColorType

func _ready() -> void:
	update_color()
	
func update_color():
	var color = BlocksColorResource.get_color(label_color)
	label.add_theme_color_override("font_color", color)
	label.text = color_to_use.get_color_name(label_color)
	label.text += color_to_use.get_color_ffffff(label_color,true)

	var material:Material = null
	if use_lit:
		material = color_to_use.get_color_lit_material(material_color)
	else:
		material = color_to_use.get_color_unlit_material(material_color)	
	mesh_material.set_surface_override_material(0, material)
