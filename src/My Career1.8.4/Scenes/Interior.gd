extends Node2D

func _ready():
	if GameManager.interiorterreo == false:
		get_node("Player").global_position = GameManager.positionelevador
	pass

func _on_OpenWorld_body_entered(body):
	GameManager.interiorterreo = false
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")

func _on_Area2DApple_body_entered(body):
	GameManager.positionelevador = get_node("Player").global_position + Vector2(-100,0)
	GameManager.interiorterreo = false
	GameManager.interiorandar = true
	get_tree().change_scene("res://Scenes/1andarApple.tscn")

func _on_Area2DMicrosoft_body_entered(body):
	GameManager.positionelevador = get_node("Player").global_position + Vector2(-100,0)
	GameManager.interiorterreo = false
	GameManager.interiorandar = true
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")

func _on_Area2DNasa_body_entered(body):
	GameManager.positionelevador = get_node("Player").global_position + Vector2(-100,0)
	GameManager.interiorterreo = false
	GameManager.interiorandar = true
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")

func _on_Area2DTesla_body_entered(body):
	GameManager.positionelevador = get_node("Player").global_position + Vector2(-100,0)
	GameManager.interiorterreo = false
	GameManager.interiorandar = true
	get_tree().change_scene("res://Scenes/1andarTesla.tscn")
