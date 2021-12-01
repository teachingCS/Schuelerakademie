extends KinematicBody2D

const JUMP_SPEED = -400
const GRAVITY = 10
var velocity = Vector2.ZERO

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity.y += GRAVITY
	
	# ist die Katze am Boden, so soll die Animation 'walk' abgespielt werden
	if is_on_floor():
		$AnimatedSprite.play("walk")
		if Input.is_action_just_pressed("jump"):
			velocity.y = JUMP_SPEED
	# ist die Katze in der Luft, so soll die Animation 'jump' abgespielt werden
	else:
		$AnimatedSprite.play("jump")
	velocity = move_and_slide(velocity, Vector2.UP)
