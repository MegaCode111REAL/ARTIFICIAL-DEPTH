class_name BlocksColorResource
extends Resource

enum ColorType {
	COLOR_01_YELLOW,
	COLOR_02_PURPLE,
	COLOR_03_BLUE_CYAN,
	COLOR_04_RED,
	COLOR_05_GREEN,
	COLOR_06_BLUE,
	COLOR_11_LIGHT_PURPLE,    
	COLOR_12_DARK_PURPLE,
	COLOR_13_BLUE_PURPLE,
	COLOR_14_LIGHT_BLUE_CYAN,
	COLOR_15_DARK_BLUE_CYAN,
	COLOR_16_LIGHT_BLUE,
	COLOR_21_PINK,
	COLOR_22_HOT_PINK,
	COLOR_23_LIGHT_RED,
	COLOR_24_GREEN_PISTACHE,
	COLOR_25_GREEN,
	COLOR_26_GREEN_EMERALD,
	COLOR_31_LIGHT_YELLOW,
	COLOR_32_ORANGE,
	COLOR_33_RED_ORANGE,
	COLOR_34_WHITE_GREY,
	COLOR_35_BLUE_GREY,
	COLOR_36_DARK_GREY,
	COLOR_41_SAND_YELLOW,
	COLOR_42_LIGHT_ORANGE,
	COLOR_43_BROWN,
	COLOR_44_WHITE,
	COLOR_45_GREY,
	COLOR_46_BLACK
}

const COLOR_01_YELLOW :Color = Color("ffff00ff")
const COLOR_02_PURPLE:Color = Color("ff00ffff")
const COLOR_03_BLUE_CYAN:Color = Color("00ffffff")
const COLOR_04_RED:Color = Color("ff0000ff")
const COLOR_05_GREEN:Color = Color("#00ff00")
const COLOR_06_BLUE:Color = Color("#0000ff")
const COLOR_11_LIGHT_PURPLE:Color = Color("ca75d8ff")    
const COLOR_12_DARK_PURPLE:Color = Color("ab3ac0ff")
const COLOR_13_BLUE_PURPLE:Color = Color("754bc6ff")
const COLOR_14_LIGHT_BLUE_CYAN:Color = Color("91f6feff")
const COLOR_15_DARK_BLUE_CYAN:Color = Color("26cfe8ff")
const COLOR_16_LIGHT_BLUE:Color = Color("24b0ffff")
const COLOR_21_PINK:Color = Color("ffcee6ff")
const COLOR_22_HOT_PINK:Color = Color("ff70a3ff")
const COLOR_23_LIGHT_RED:Color = Color("fe5348ff")
const COLOR_24_GREEN_PISTACHE:Color = Color("9bda57ff")
const COLOR_25_GREEN:Color = Color("5bc461ff")
const COLOR_26_GREEN_EMERALD:Color = Color("24aa9cff")
const COLOR_31_LIGHT_YELLOW:Color = Color("ffff4cff")
const COLOR_32_ORANGE:Color = Color("feab24ff")
const COLOR_33_RED_ORANGE:Color = Color("ff6836ff")
const COLOR_34_WHITE_GREY:Color = Color("e8f1f4ff")
const COLOR_35_BLUE_GREY:Color = Color("8ba5b1ff")
const COLOR_36_DARK_GREY:Color = Color("596c78ff")
const COLOR_41_SAND_YELLOW:Color = Color("ffe69dff")
const COLOR_42_LIGHT_ORANGE:Color = Color("faad55ff")
const COLOR_43_BROWN:Color = Color("8d655cff")
const COLOR_44_WHITE:Color = Color("ffffffff")
const COLOR_45_GREY:Color = Color("b6b6b6ff")
const COLOR_46_BLACK:Color = Color("2c3030ff")


@export_group("Color Materials Lit")
@export var mat_lit_01_yellow :StandardMaterial3D
@export var mat_lit_02_purple:StandardMaterial3D
@export var mat_lit_03_blue_cyan:StandardMaterial3D
@export var mat_lit_04_red:StandardMaterial3D
@export var mat_lit_05_green:StandardMaterial3D
@export var mat_lit_06_blue:StandardMaterial3D
@export var mat_lit_11_light_purple:StandardMaterial3D
@export var mat_lit_12_dark_purple:StandardMaterial3D
@export var mat_lit_13_blue_purple:StandardMaterial3D
@export var mat_lit_14_light_blue_cyan:StandardMaterial3D
@export var mat_lit_15_dark_blue_cyan:StandardMaterial3D
@export var mat_lit_16_light_blue:StandardMaterial3D
@export var mat_lit_21_pink:StandardMaterial3D
@export var mat_lit_22_hot_pink:StandardMaterial3D
@export var mat_lit_23_light_red:StandardMaterial3D
@export var mat_lit_24_green_pistache:StandardMaterial3D
@export var mat_lit_25_green:StandardMaterial3D
@export var mat_lit_26_green_emerald:StandardMaterial3D
@export var mat_lit_31_light_yellow:StandardMaterial3D
@export var mat_lit_32_orange:StandardMaterial3D
@export var mat_lit_33_red_orange:StandardMaterial3D
@export var mat_lit_34_white_grey:StandardMaterial3D
@export var mat_lit_35_blue_grey:StandardMaterial3D
@export var mat_lit_36_dark_grey:StandardMaterial3D
@export var mat_lit_41_sand_yellow:StandardMaterial3D
@export var mat_lit_42_light_orange:StandardMaterial3D
@export var mat_lit_43_brown:StandardMaterial3D
@export var mat_lit_44_white:StandardMaterial3D
@export var mat_lit_45_grey:StandardMaterial3D
@export var mat_lit_46_black:StandardMaterial3D




@export_group("Color Materials Unlit")
@export var mat_unlit_01_yellow :StandardMaterial3D
@export var mat_unlit_02_purple:StandardMaterial3D
@export var mat_unlit_03_blue_cyan:StandardMaterial3D
@export var mat_unlit_04_red:StandardMaterial3D
@export var mat_unlit_05_green:StandardMaterial3D
@export var mat_unlit_06_blue:StandardMaterial3D
@export var mat_unlit_11_light_purple:StandardMaterial3D
@export var mat_unlit_12_dark_purple:StandardMaterial3D
@export var mat_unlit_13_blue_purple:StandardMaterial3D
@export var mat_unlit_14_light_blue_cyan:StandardMaterial3D
@export var mat_unlit_15_dark_blue_cyan:StandardMaterial3D
@export var mat_unlit_16_light_blue:StandardMaterial3D
@export var mat_unlit_21_pink:StandardMaterial3D
@export var mat_unlit_22_hot_pink:StandardMaterial3D
@export var mat_unlit_23_light_red:StandardMaterial3D
@export var mat_unlit_24_green_pistache:StandardMaterial3D
@export var mat_unlit_25_green:StandardMaterial3D
@export var mat_unlit_26_green_emerald:StandardMaterial3D
@export var mat_unlit_31_light_yellow:StandardMaterial3D
@export var mat_unlit_32_orange:StandardMaterial3D
@export var mat_unlit_33_red_orange:StandardMaterial3D
@export var mat_unlit_34_white_grey:StandardMaterial3D
@export var mat_unlit_35_blue_grey:StandardMaterial3D
@export var mat_unlit_36_dark_grey:StandardMaterial3D
@export var mat_unlit_41_sand_yellow:StandardMaterial3D
@export var mat_unlit_42_light_orange:StandardMaterial3D
@export var mat_unlit_43_brown:StandardMaterial3D
@export var mat_unlit_44_white:StandardMaterial3D
@export var mat_unlit_45_grey:StandardMaterial3D
@export var mat_unlit_46_black:StandardMaterial3D


static func get_color_name(color_type:ColorType)->String:
	match color_type:
		ColorType.COLOR_01_YELLOW:
			return "Yellow"
		ColorType.COLOR_02_PURPLE:
			return "Purple"
		ColorType.COLOR_03_BLUE_CYAN:
			return "Blue Cyan"
		ColorType.COLOR_04_RED:
			return "Red"
		ColorType.COLOR_05_GREEN:
			return "Green"
		ColorType.COLOR_06_BLUE:
			return "Blue"
		ColorType.COLOR_11_LIGHT_PURPLE:
			return "Light Purple"    
		ColorType.COLOR_12_DARK_PURPLE:
			return "Dark Purple"
		ColorType.COLOR_13_BLUE_PURPLE:
			return "Blue Purple"
		ColorType.COLOR_14_LIGHT_BLUE_CYAN:
			return "Light Blue Cyan"
		ColorType.COLOR_15_DARK_BLUE_CYAN:
			return "Dark Blue Cyan"
		ColorType.COLOR_16_LIGHT_BLUE:
			return "Light Blue"
		ColorType.COLOR_21_PINK:
			return "Pink"
		ColorType.COLOR_22_HOT_PINK:
			return "Hot Pink"
		ColorType.COLOR_23_LIGHT_RED:
			return "Light Red"
		ColorType.COLOR_24_GREEN_PISTACHE:
			return "Green Pistache"
		ColorType.COLOR_25_GREEN:
			return "Green"
		ColorType.COLOR_26_GREEN_EMERALD:
			return "Green Emerald"
		ColorType.COLOR_31_LIGHT_YELLOW:
			return "Light Yellow"
		ColorType.COLOR_32_ORANGE:
			return "Orange"
		ColorType.COLOR_33_RED_ORANGE:
			return "Red Orange"
		ColorType.COLOR_34_WHITE_GREY:
			return "White Grey"
		ColorType.COLOR_35_BLUE_GREY:
			return "Blue Grey"
		ColorType.COLOR_36_DARK_GREY:
			return "Dark Grey"
		ColorType.COLOR_41_SAND_YELLOW:
			return "Sand Yellow"
		ColorType.COLOR_42_LIGHT_ORANGE:
			return "Light Orange"
		ColorType.COLOR_43_BROWN:
			return "Brown"
		ColorType.COLOR_44_WHITE:
			return "White"
		ColorType.COLOR_45_GREY:
			return "Grey"
		ColorType.COLOR_46_BLACK:
			return "Black"
		_:
			return "Unknown Color"

static func get_color_ffffff(color_type:ColorType, with_hashtag:bool = false)->String:
	var color = get_color(color_type)   
	var hex_color = color.to_html(false)
	if with_hashtag:
		return " #" + hex_color
	else:        
		return " " + hex_color

		


func get_color_lit_material(color_type:ColorType)->StandardMaterial3D:
	match color_type:
		ColorType.COLOR_01_YELLOW:
			return mat_lit_01_yellow
		ColorType.COLOR_02_PURPLE:
			return mat_lit_02_purple
		ColorType.COLOR_03_BLUE_CYAN:
			return mat_lit_03_blue_cyan
		ColorType.COLOR_04_RED:
			return mat_lit_04_red
		ColorType.COLOR_05_GREEN:
			return mat_lit_05_green
		ColorType.COLOR_06_BLUE:
			return mat_lit_06_blue
		ColorType.COLOR_11_LIGHT_PURPLE:
			return mat_lit_11_light_purple
		ColorType.COLOR_12_DARK_PURPLE:
			return mat_lit_12_dark_purple
		ColorType.COLOR_13_BLUE_PURPLE:
			return mat_lit_13_blue_purple
		ColorType.COLOR_14_LIGHT_BLUE_CYAN:
			return mat_lit_14_light_blue_cyan
		ColorType.COLOR_15_DARK_BLUE_CYAN:
			return mat_lit_15_dark_blue_cyan
		ColorType.COLOR_16_LIGHT_BLUE:
			return mat_lit_16_light_blue
		ColorType.COLOR_21_PINK:
			return mat_lit_21_pink
		ColorType.COLOR_22_HOT_PINK:
			return mat_lit_22_hot_pink
		ColorType.COLOR_23_LIGHT_RED:
			return mat_lit_23_light_red
		ColorType.COLOR_24_GREEN_PISTACHE:
			return mat_lit_24_green_pistache
		ColorType.COLOR_25_GREEN:
			return mat_lit_25_green
		ColorType.COLOR_26_GREEN_EMERALD:
			return mat_lit_26_green_emerald
		ColorType.COLOR_31_LIGHT_YELLOW:
			return mat_lit_31_light_yellow
		ColorType.COLOR_32_ORANGE:
			return mat_lit_32_orange
		ColorType.COLOR_33_RED_ORANGE:
			return mat_lit_33_red_orange
		ColorType.COLOR_34_WHITE_GREY:
			return mat_lit_34_white_grey
		ColorType.COLOR_35_BLUE_GREY:
			return mat_lit_35_blue_grey
		ColorType.COLOR_36_DARK_GREY:
			return mat_lit_36_dark_grey
		ColorType.COLOR_41_SAND_YELLOW:
			return mat_lit_41_sand_yellow
		ColorType.COLOR_42_LIGHT_ORANGE:
			return mat_lit_42_light_orange
		ColorType.COLOR_43_BROWN:
			return mat_lit_43_brown
		ColorType.COLOR_44_WHITE:
			return mat_lit_44_white
		ColorType.COLOR_45_GREY:
			return mat_lit_45_grey
		ColorType.COLOR_46_BLACK:
			return mat_lit_46_black
		_:
			return mat_lit_01_yellow # default yellow



func get_color_unlit_material(color_type:ColorType)->StandardMaterial3D:
	match color_type:
		ColorType.COLOR_01_YELLOW:
			return mat_unlit_01_yellow
		ColorType.COLOR_02_PURPLE:
			return mat_unlit_02_purple
		ColorType.COLOR_03_BLUE_CYAN:
			return mat_unlit_03_blue_cyan
		ColorType.COLOR_04_RED:
			return mat_unlit_04_red
		ColorType.COLOR_05_GREEN:
			return mat_unlit_05_green
		ColorType.COLOR_06_BLUE:
			return mat_unlit_06_blue
		ColorType.COLOR_11_LIGHT_PURPLE:
			return mat_unlit_11_light_purple
		ColorType.COLOR_12_DARK_PURPLE:
			return mat_unlit_12_dark_purple
		ColorType.COLOR_13_BLUE_PURPLE:
			return mat_unlit_13_blue_purple
		ColorType.COLOR_14_LIGHT_BLUE_CYAN:
			return mat_unlit_14_light_blue_cyan
		ColorType.COLOR_15_DARK_BLUE_CYAN:
			return mat_unlit_15_dark_blue_cyan
		ColorType.COLOR_16_LIGHT_BLUE:
			return mat_unlit_16_light_blue
		ColorType.COLOR_21_PINK:
			return mat_unlit_21_pink
		ColorType.COLOR_22_HOT_PINK:
			return mat_unlit_22_hot_pink
		ColorType.COLOR_23_LIGHT_RED:
			return mat_unlit_23_light_red
		ColorType.COLOR_24_GREEN_PISTACHE:
			return mat_unlit_24_green_pistache
		ColorType.COLOR_25_GREEN:
			return mat_unlit_25_green
		ColorType.COLOR_26_GREEN_EMERALD:
			return mat_unlit_26_green_emerald
		ColorType.COLOR_31_LIGHT_YELLOW:
			return mat_unlit_31_light_yellow
		ColorType.COLOR_32_ORANGE:
			return mat_unlit_32_orange
		ColorType.COLOR_33_RED_ORANGE:
			return mat_unlit_33_red_orange
		ColorType.COLOR_34_WHITE_GREY:
			return mat_unlit_34_white_grey
		ColorType.COLOR_35_BLUE_GREY:
			return mat_unlit_35_blue_grey
		ColorType.COLOR_36_DARK_GREY:
			return mat_unlit_36_dark_grey
		ColorType.COLOR_41_SAND_YELLOW:
			return mat_unlit_41_sand_yellow
		ColorType.COLOR_42_LIGHT_ORANGE:
			return mat_unlit_42_light_orange
		ColorType.COLOR_43_BROWN:
			return mat_unlit_43_brown
		ColorType.COLOR_44_WHITE:
			return mat_unlit_44_white
		ColorType.COLOR_45_GREY:
			return mat_unlit_45_grey
		ColorType.COLOR_46_BLACK:
			return mat_unlit_46_black
		_:
			return mat_unlit_01_yellow # default yellow     


static func get_color(color_type:ColorType)->Color:
	match color_type:
		ColorType.COLOR_01_YELLOW:
			return COLOR_01_YELLOW
		ColorType.COLOR_02_PURPLE:
			return COLOR_02_PURPLE
		ColorType.COLOR_03_BLUE_CYAN:
			return COLOR_03_BLUE_CYAN
		ColorType.COLOR_04_RED:
			return COLOR_04_RED
		ColorType.COLOR_05_GREEN:
			return COLOR_05_GREEN
		ColorType.COLOR_06_BLUE:
			return COLOR_06_BLUE
		ColorType.COLOR_11_LIGHT_PURPLE:
			return COLOR_11_LIGHT_PURPLE
		ColorType.COLOR_12_DARK_PURPLE:
			return COLOR_12_DARK_PURPLE
		ColorType.COLOR_13_BLUE_PURPLE:
			return COLOR_13_BLUE_PURPLE
		ColorType.COLOR_14_LIGHT_BLUE_CYAN:
			return COLOR_14_LIGHT_BLUE_CYAN
		ColorType.COLOR_15_DARK_BLUE_CYAN:
			return COLOR_15_DARK_BLUE_CYAN
		ColorType.COLOR_16_LIGHT_BLUE:
			return COLOR_16_LIGHT_BLUE
		ColorType.COLOR_21_PINK:
			return COLOR_21_PINK
		ColorType.COLOR_22_HOT_PINK:
			return COLOR_22_HOT_PINK
		ColorType.COLOR_23_LIGHT_RED:
			return COLOR_23_LIGHT_RED
		ColorType.COLOR_24_GREEN_PISTACHE:
			return COLOR_24_GREEN_PISTACHE
		ColorType.COLOR_25_GREEN:
			return COLOR_25_GREEN
		ColorType.COLOR_26_GREEN_EMERALD:
			return COLOR_26_GREEN_EMERALD
		ColorType.COLOR_31_LIGHT_YELLOW:
			return COLOR_31_LIGHT_YELLOW
		ColorType.COLOR_32_ORANGE:
			return COLOR_32_ORANGE
		ColorType.COLOR_33_RED_ORANGE:
			return COLOR_33_RED_ORANGE
		ColorType.COLOR_34_WHITE_GREY:
			return COLOR_34_WHITE_GREY
		ColorType.COLOR_35_BLUE_GREY:
			return COLOR_35_BLUE_GREY
		ColorType.COLOR_36_DARK_GREY:
			return COLOR_36_DARK_GREY
		ColorType.COLOR_41_SAND_YELLOW:
			return COLOR_41_SAND_YELLOW
		ColorType.COLOR_42_LIGHT_ORANGE:
			return COLOR_42_LIGHT_ORANGE
		ColorType.COLOR_43_BROWN:
			return COLOR_43_BROWN
		ColorType.COLOR_44_WHITE:
			return COLOR_44_WHITE
		ColorType.COLOR_45_GREY:
			return COLOR_45_GREY
		ColorType.COLOR_46_BLACK:
			return COLOR_46_BLACK
		_:
			return Color(1,1,1,1) # default white
