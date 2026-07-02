extends Control

@onready var main_music = $AudioStreamMain
@onready var settings_music = $AudioStreamSettings
@onready var settings_open = false
@onready var grid = $Grid
@onready var light_grid = $LightGrid
@onready var color = $ColorRect
@onready var normal_color = Color(0.031, 0.0, 0.082, 1.0)
@onready var bright_color = Color(0.082, 0.0, 0.157, 1.0)
@onready var main_container = $CenterContainer
@onready var settings_container = $settings

# Called every frame. '_delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _ready():
	main_container.visible = true
	var start_button = $CenterContainer/VBoxContainer/start
	var settings_button = $CenterContainer/VBoxContainer/settings
	var quit_button = $CenterContainer/VBoxContainer/quit
	var settings_close_button = $settings/Button

	start_button.pressed.connect(_start_pressed)
	settings_button.pressed.connect(open_settings)
	quit_button.pressed.connect(_quit_pressed)
	settings_close_button.pressed.connect(close_settings)
	$settings/SettingsContainer/Rendering/VBoxContainer/OptionButton.item_selected.connect(update_resolution)
	$settings/SettingsContainer/Rendering/VBoxContainer/OptionButton2.item_selected.connect(update_fullscreen)
	$settings/SettingsContainer/Rendering/VBoxContainer/CheckButton3.toggled.connect(fps_display)
	settings_container.visible = false
	
	main_music.volume_db = 0
	settings_music.volume_db = -80
	
	main_music.play()
	settings_music.play()

func _start_pressed():
	print("MAIN: Starting simulation...")
	get_tree().change_scene_to_file("res://game3d.tscn")

func _quit_pressed():
	print("MAIN: Quitting...")
	get_tree().quit()

func open_settings():
	print("MAIN: Settings opened")
	color.color = bright_color
	grid.visible = false
	settings_container.visible = true
	light_grid.visible = true
	main_container.visible = false
	var open_tween = create_tween()
	
	

	open_tween.tween_property(main_music, "volume_db", -10, 0.5)
	open_tween.parallel().tween_property(settings_music, "volume_db", 0, 0.5)

func close_settings():
	print("MAIN: Settings closed")
	color.color = normal_color
	main_container.visible = true
	grid.visible = true
	light_grid.visible = false
	settings_container.visible = false
	var close_tween = create_tween()

	close_tween.tween_property(main_music, "volume_db", 0, 0.5)
	close_tween.parallel().tween_property(settings_music, "volume_db", -80, 0.5)

func update_resolution(index):
	match index:
		0:
			DisplayServer.window_set_size(Vector2i(1280, 720))
		1:
			DisplayServer.window_set_size(Vector2i(1920, 1080))
		2:
			DisplayServer.window_set_size(Vector2i(2650, 1440))

func update_fullscreen(index):
	match index:
		0:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
		1:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
		2:
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_EXCLUSIVE_FULLSCREEN)

func fps_display(toggled: bool):
	Settings.show_fps = toggled
