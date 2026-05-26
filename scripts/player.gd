class_name Player extends Node2D

var time_since_last_move:float = 0
var time_between_moves:float = 1000

# importando nodes
@onready var head: Head = %Head
@onready var spawner: Spawner = %Spawner
@onready var segment: Segment = %Segment


@export var SPEED:float = 3000
var snake_segment:Array[Segment] = []
var direction: Vector2 = Vector2.RIGHT


# pega a direção da cobra
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_left"):
		direction = Vector2.LEFT
	if Input.is_action_just_pressed("ui_right"):
		direction = Vector2.RIGHT

	if Input.is_action_just_pressed("ui_up"):
		direction = Vector2.UP
	if Input.is_action_just_pressed("ui_down"):
		direction = Vector2.DOWN

# atualizando posições da cobra
func _physics_process(delta: float) -> void:
	time_since_last_move += delta * SPEED
	if time_since_last_move >= time_between_moves:
		update_head()
		time_since_last_move = 0
	pass

# atualizando posição da cabeça
func update_head():
	var last_position = head.position
	var new_position:Vector2 = head.position + direction * Global.GRID_SIZE
	head.move_to(new_position)
	if last_position != segment.position:
		segment.move_to(last_position)
		last_position = new_position
		pass
	pass

# recebe o emit ao comer uma comida 
func _on_head_food_eated() -> void:
	spawner.spawn_food()
	spawner.spawn_segment(head.position)
	pass
	
