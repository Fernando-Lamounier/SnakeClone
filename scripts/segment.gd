class_name Segment extends Area2D

var lastPosition: Vector2

func move_to(newPosition: Vector2):
	lastPosition = self.position
	self.position = newPosition
