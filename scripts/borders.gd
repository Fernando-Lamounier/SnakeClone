class_name Borders 
extends Node2D

@onready var lower_right: Marker2D = %lower_right
@onready var uper_left: Marker2D = %uper_left

var y_max:float
var y_min:float
var x_max:float
var x_min:float


func _ready() -> void:
	y_max = lower_right.position.y
	y_min = uper_left.position.y
	x_max = lower_right.position.x
	x_min = uper_left.position.x
	print(x_max, y_max, x_min, y_min)
	pass

func warp_player(player_pos:Vector2):
	
	if player_pos.x >= x_max:
		player_pos.x = int(x_min / Global.GRID_SIZE) * Global.GRID_SIZE
		return player_pos
	if player_pos.x <= x_min:
		player_pos.x = int(x_max / Global.GRID_SIZE) * Global.GRID_SIZE
		return player_pos
		
	if player_pos.y >= y_max:
		player_pos.y = int(y_min / Global.GRID_SIZE) * Global.GRID_SIZE
		return player_pos
	if player_pos.y <= y_min:
		player_pos.y = int(y_max / Global.GRID_SIZE) * Global.GRID_SIZE
		return player_pos
	
	return player_pos
	
