extends Node2D

func _ready():
	pass # Replace with function body.


func _on_ElonMusgo_body_entered(body):
	get_tree().change_scene("res://Scenes/ElonMusgo.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.


func _on_Tesla_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoTesla.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.


func _on_SteveTrabalho_body_entered(body):
	get_tree().change_scene("res://Scenes/SteveTrabalho.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio da Tesla.


func _on_DorothyVan_body_entered(body):
	get_tree().change_scene("res://Scenes/DorothyVan.tscn")
	pass # Replace with function body.


func _on_BillPortas_body_entered(body):
	get_tree().change_scene("res://Scenes/BillPortas.tscn")
	pass # Replace with function body.


func _on_Apple_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoApple.tscn")
	pass # Replace with function body.


func _on_Microsoft_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoMicrosoft.tscn")
	pass # Replace with function body.


func _on_Nasa_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")
	pass # Replace with function body.
