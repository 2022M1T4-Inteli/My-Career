extends Sprite

onready var music = $AudioStreamPlayer2D

func _animation():
	visible = true
	music.play()
	yield(get_tree().create_timer(1), "timeout")
	visible = false
	
