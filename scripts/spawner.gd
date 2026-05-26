class_name Spawner
extends Node2D

var food_scene:PackedScene = preload("res://scenes/fruta.tscn")
var segment_scene:PackedScene = preload("res://scenes/segment.tscn")

func spawn_food():
	var spawn_point: Vector2 = Vector2.ZERO
	spawn_point.x = randf_range(-500, 500)
	spawn_point.y = randf_range(-500, 500)
	
	var food = food_scene.instantiate()
	food.position = spawn_point
	
	get_parent().add_child(food)
	pass

func spawn_segment(pos:Vector2):
	var segment:Segment = segment_scene.instantiate() as Segment
	segment.position = pos
	pass
