class_name Segment extends Area2D

var lastPosition: Vector2

# função de atualização de posição
func move_to(newPosition: Vector2):
	lastPosition = self.position
	self.position = newPosition
	
