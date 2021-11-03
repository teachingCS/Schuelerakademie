extends KinematicBody2D

var velocity = Vector2.ZERO

const GRAVITY = 20
const JUMP_HEIGHT = -600
const SPEED = 250

func _physics_process(_delta):
	# Gravitation:
	velocity.y += GRAVITY
	
	# Bewegung:
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
		$AnimatedSprite.flip_h = true
	else:
		velocity.x = 0
	
	# Springen:
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_HEIGHT
	
	# Animation:
	if is_on_floor():
		if velocity.x == 0:
			$AnimatedSprite.play("idle")
		else:
			$AnimatedSprite.play("run")
	else:
		$AnimatedSprite.play("jump")
	
	
	velocity = move_and_slide(velocity, Vector2.UP)
