extends Node2D


func _on_Button_pressed():
	#muda de cena quando aperta o botao
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")
	pass # Replace with function body.


func unpause(timeline_name):
	get_tree().paused = false #despausa o game ao fim do diálogo


