extends KinematicBody2D

const JUMP_SPEED = -400
const GRAVITY = 10
var velocity = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_SPEED
	velocity = move_and_slide(velocity, Vector2.UP)
