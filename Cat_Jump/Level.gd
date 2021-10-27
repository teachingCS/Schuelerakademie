extends Node2D

# Preload der Szene
const OBSTACLE = preload("res://Obstacle.tscn")

func _on_Timer_timeout():
	# eine Instanz von OBSTACLE erzeugen:
	var obstacle = OBSTACLE.instance()
	# die Instanz der Szene hinzufügen:
	add_child(obstacle)
