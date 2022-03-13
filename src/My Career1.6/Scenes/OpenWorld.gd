extends Node2D

func _ready():
	pass # Replace with function body.


func _on_ElonMusgo_body_entered(body):
	get_tree().change_scene("res://Scenes/ElonMusgo.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.


func _on_Microsoft_body_entered(body):
	get_tree().change_scene("res://Scenes/Microsoft.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.
