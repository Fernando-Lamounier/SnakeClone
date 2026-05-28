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
	
	pass # Replace with function body.

func warp_player(player_pos:Vector2):
	if player_pos.x >= x_max:
		player_pos.x = x_min
		
	if player_pos.x <= x_min:
		player_pos.x = x_max
		
	if player_pos.y >= y_max:
		player_pos.y = y_min
		
	if player_pos.y <= y_min:
		player_pos.y = y_max
		
	
	return player_pos
