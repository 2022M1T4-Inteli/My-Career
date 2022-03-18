extends Sprite

var firsttime = 0

func _ready():
	pass

func _on_OpenWorld_body_entered(body):
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")

func _on_Area2DApple_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarApple.tscn")

func _on_Area2DMicrosoft_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")

func _on_Area2DNasa_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")

func _on_Area2DTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarTesla.tscn")
