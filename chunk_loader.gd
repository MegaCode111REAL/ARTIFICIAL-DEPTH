extends Node

@onready var loaded_chunks = $"../LoadedChunks"

var loaded = {}

func _ready():
	load_chunk("res://levels/Level1.tscn", Vector3(0,0,0))

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
