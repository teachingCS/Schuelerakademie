extends Control



func _on_ButtonNewGame_pressed():
	GameState.current_level = 0
	GameState.load_level()


func _on_ButtonContinue_pressed():
	GameState.load_level()


func _on_ButtonQuit_pressed():
	get_tree().quit()
