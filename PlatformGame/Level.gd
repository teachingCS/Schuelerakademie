extends Node2D



func _on_Goal_body_entered(body):
	# Wechsel in Level 2:
	get_tree().change_scene("res://Level2.tscn")
