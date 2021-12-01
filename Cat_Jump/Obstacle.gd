extends Area2D
var animation_list = ["sloth", "couch", "family", " kittens", "maru", "pile", "pizza"]

func _physics_process(_delta):
	position.x -= 10

func _ready():
	randomize()
	var zufallszahl = randi() % 7
	$AnimatedSprite.play(animation_list[zufallszahl])
	

func _on_VisibilityNotifier2D_screen_exited():
	# das Objekt wird gelöscht
	queue_free()


func _on_Obstacle_body_entered(body):
	# das Spiel wird beendet:
	get_tree().change_scene("res://Menu.tscn")
