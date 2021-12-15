extends Area2D
var animation_list = ["sloth", "couch", "family", " kittens", "maru", "pile", "pizza"]
var obstacle_speed

func _physics_process(_delta):
	position.x -= obstacle_speed

func _ready():
	randomize()
	# Die Geschwindigkeit eines Objektes soll variieren
	obstacle_speed = rand_range(5,15)
	var zufallszahl = randi() % animation_list.size()
	$AnimatedSprite.play(animation_list[zufallszahl])
	

func _on_VisibilityNotifier2D_screen_exited():
	# das Objekt wird gelöscht
	queue_free()


func _on_Obstacle_body_entered(body):
	# das Spiel wird beendet:
	get_tree().change_scene("res://Menu.tscn")
