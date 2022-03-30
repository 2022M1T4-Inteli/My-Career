extends KinematicBody2D



func _process(delta):
	if Input.is_action_pressed("ui_right"):
		position.x += 0.22
	if Input.is_action_pressed("ui_left"):
		position.x -= 0.22
	if Input.is_action_pressed("ui_down"):
		position.y += 0.22
	if Input.is_action_pressed("ui_up"):
		position.y -= 0.22
