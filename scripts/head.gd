class_name Head extends Segment
@onready var player: Player = $".."

signal food_eated
var snake_walked = false
# função de colisões com outras entidades do jogo
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("food"):
		area.queue_free()
		food_eated.emit()
		pass
	else:
		if snake_walked:
			player.game_over()
			pass
	pass 


func walked():
	snake_walked = true
	pass
