extends Area2D

func _elevatorEnable():
	$CollisionShape2D.disabled = false

func _ready():
	if GameManager.firsttimeap == 0:
		$CollisionShape2D.disabled = true
	else: 
		$CollisionShape2D.disabled = false
