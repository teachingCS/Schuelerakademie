extends Node2D

const PLAYER = preload("res://Player.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var player = PLAYER.instance()
	add_child(player)

