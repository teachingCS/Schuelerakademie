extends "res://Template/Moveable.gd"

var last_position = Vector2()

func _ready():
	last_position = position

func _unhandled_input(event):
	if event.is_action_pressed("Up"):
		move(Vector2.UP)
	elif event.is_action_pressed("Down"):
		move(Vector2.DOWN)
	elif event.is_action_pressed("Left"):
		move(Vector2.LEFT)
	elif event.is_action_pressed("Right"):
		move(Vector2.RIGHT)
	elif event.is_action_pressed("Menu"):
		# Das Menu wird als Szene geladen
		get_tree().change_scene("res://UI/MainScene.tscn")
		
func blocked():
	$Tween.stop_all()
	moving = false
	position = last_position


func move(direction:Vector2):
	if moving:
		return
	if direction_free(direction):
		moving = true
		last_position = position
		direction *= TILE_SIZE
		$Tween.interpolate_property(self, "position", position, position+direction, speed, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN, 0)
		$Tween.start()
		$AudioStreamPlayer.play()
