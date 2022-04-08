extends Node2D

func _ready():
	pass

func _on_Genius_Button_pressed():
	get_tree().change_scene("res://NodeGenius.tscn")
#função que move o jogador pra cena do genius


func _on_Wire_Task_Button_pressed():
	get_tree().change_scene("res://WireTask.tscn")
#função que move o jogador pra cena do wire task
