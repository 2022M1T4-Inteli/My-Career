extends Node2D

#onready var map = preload("res://Scenes/Minimapa.tscn")
#var mm  #MINIMAPA


func _ready(): #MINIMAPA
#	set_mm()

	if GameManager.tutorial == false:
		get_node("Player").get_node("Camera2D")._on_Button_pressed()
		GameManager.tutorial = true
	else:
		pass

#func set_mm():    #MINMAPA
#	mm = map.instance()
#	$Player/Camera2D.add_child(mm)
#	mm.rect_position = Vector2(600,-550)

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
	

func _on_BillPortas_body_entered(body):
	get_tree().change_scene("res://Scenes/BillPortas.tscn")



func _on_Apple_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoApple.tscn")


func _on_Microsoft_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoMicrosoft.tscn")


func _on_Nasa_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")


func _on_Biblioteca_body_entered(body):
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
