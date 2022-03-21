extends Area2D

var firsttime

func _ElevadorEnable():
	$CollisionShape2D.disabled = false


func _on_Area2DTesla_body_entered(body):
	if firsttime == 0:
		$CollisionShape2D.disabled = true
		firsttime += 1
	else: 
		$CollisionShape2D.disabled = false
