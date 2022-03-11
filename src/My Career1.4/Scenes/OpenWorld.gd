extends Node2D

func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Scenes/Level2.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio.
