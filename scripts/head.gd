class_name Head extends Segment

signal food_eated

func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("food"):
		area.queue_free()
		food_eated.emit()
		pass
	else:
		
		pass
	pass 
