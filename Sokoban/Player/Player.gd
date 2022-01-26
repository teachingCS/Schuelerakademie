extends "res://Template/Moveable.gd"

func _unhandled_input(event):
	if event.is_action_pressed("Up"):
		move(Vector2.UP)
	elif event.is_action_pressed("Down"):
		move(Vector2.DOWN)
	elif event.is_action_pressed("Left"):
		move(Vector2.LEFT)
	elif event.is_action_pressed("Right"):
		move(Vector2.RIGHT)
		
