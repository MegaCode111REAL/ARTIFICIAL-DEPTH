extends TextureRect

var speed = 31
var start_y = 0
var start_x = 0
var texture_height = 0
var texture_width = 0

func _ready():
	print('MAIN: Menu scene loaded')
	# Get texture height safely
	if texture:
		texture_height = texture.get_height()
		texture_width = texture.get_width()
	
	start_x = position.x - texture_height
	start_y = position.y - texture_height
	position.y = start_y
	position.x = start_x

func _process(delta):
	position.y += (speed * delta) / 2
	position.x += (speed * delta)

	# reset when it moves one full texture down
	if position.y >= start_y + texture_height:
		position.y = start_y
	
	if position.x >= start_x + texture_width:
		position.x = start_x
