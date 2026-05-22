extends Area2D

var is_hide = 0
var new_position = Vector2()

func _on_body_entered(body: Node2D) -> void:
	hide()
	is_hide = 1
	pass

func _process(delta: float) -> void:
	if is_hide == 1:
		var num = 0
		while num == 0:
			num = randi_range(-1, 1)
		new_position.y = randi() % 550 * num
		
		while num == 0:
			num = randi_range(-1, 1)
		new_position.x = randi() % 550 * num
		
		position = new_position
		show()
		is_hide = 0
