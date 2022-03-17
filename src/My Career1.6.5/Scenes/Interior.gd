extends Sprite

func _ready():
	pass # Replace with function body.

func _on_OpenWorld_body_entered(body):
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")


func _on_1andarTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarTesla.tscn")


func _on_1andarApple_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarApple.tscn")
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")
	pass # Replace with function body.


func _on_1andarNasa_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")
	pass # Replace with function body.

func _hideElevator():
	$Area2D.show()
