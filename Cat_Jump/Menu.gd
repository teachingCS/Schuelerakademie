extends Control


func _ready():
	
	# wurde beim letzten Spiel ein neuer Highscore erzielt
	if Global.current_score > Global.highscore:
		Global.highscore = Global.current_score
	# current_score für das nächste Spiel auf 0 setzen: 
	Global.current_score = 0
	
	$HighscoreLabel.text = "Highscore: " + str(Global.highscore)


func _input(event):
	if event.is_action_pressed("jump"):
		get_tree().change_scene("res://Level.tscn")

