extends "res://Template/Moveable.gd"



func _on_Crate_area_entered(player):
	var player_direction = Vector2(player.global_position - global_position).normalized()
	move(-player_direction)
