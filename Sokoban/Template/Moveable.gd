extends Area2D

const TILE_SIZE = 64
const SPEED = .25

var moving = false


func _on_Tween_tween_completed(_object, _key):
	moving = false
	
	
func move(direction:Vector2):
	if moving:
		return
	if direction_free(direction):
		moving = true
		direction *= TILE_SIZE
		$Tween.interpolate_property(self, "position", position, position+direction, SPEED, Tween.TRANS_LINEAR, Tween.EASE_OUT_IN, 0)
		$Tween.start()
		
		
func direction_free(direction):
	match direction:
		Vector2.UP:
			return not $RayUp.is_colliding()
		Vector2.DOWN:
			return not $RayDown.is_colliding()
		Vector2.LEFT:
			return not $RayLeft.is_colliding()
		Vector2.RIGHT:
			return not $RayRight.is_colliding()
