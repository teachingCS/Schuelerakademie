extends KinematicBody2D

const JUMP_SPEED = -400
const GRAVITY = 10
var velocity = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("ui_up"):
		velocity.y = JUMP_SPEED
	move_and_slide(velocity)
