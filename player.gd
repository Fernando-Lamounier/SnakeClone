extends CharacterBody2D


@export var SPEED = 5
var direction = Vector2()

func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("ui_left"):
		direction.x = -1
		direction.y = 0
	if Input.is_action_just_pressed("ui_right"):
		direction.x = 1
		direction.y = 0

	if Input.is_action_just_pressed("ui_up"):
		direction.y = -1
		direction.x = 0
	if Input.is_action_just_pressed("ui_down"):
		direction.y = 1
		direction.x = 0
	
	
	position += direction * SPEED
