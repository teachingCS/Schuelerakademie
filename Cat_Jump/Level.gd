extends Node2D

# Preload der Szene
const OBSTACLE = preload("res://Obstacle.tscn")

func _on_Timer_timeout():
	# eine Instanz von OBSTACLE erzeugen:
	var obstacle = OBSTACLE.instance()
	# die Instanz der Szene hinzufügen:
	add_child(obstacle)
	# Das nächste Obstacle soll im zufälligen Abstand zwischen einer und drei Sekunden gespawnt werden. 
	randomize()
	$Timer.wait_time = rand_range(1, 3)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
	# print(Global.current_score)
	# Label aktualisieren:
	$ScoreLabel.text = "Score: " + str(Global.current_score)
