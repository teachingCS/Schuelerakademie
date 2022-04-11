extends Particles2D

signal particles_done

func _on_Goals_victory():
	emitting = true
	$Timer.start()
	$AudioStreamPlayer.play()



func _on_Timer_timeout():
	emit_signal("particles_done")
