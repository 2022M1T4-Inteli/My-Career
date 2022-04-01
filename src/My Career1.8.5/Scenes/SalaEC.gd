extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonEC_pressed():
	OS.shell_open("https://instagram.com/juliallabs")
	pass # Replace with function body.


func _on_ButtonCarreiraEC_pressed():
	OS.shell_open("https://www.guiadacarreira.com.br/guia-das-profissoes/engenharia-computacao/ ")
	pass # Replace with function body.


func _on_ButtonAreatrabEC_pressed():
	OS.shell_open("https://www.youtube.com/watch?v=1W5YrYFl_zE")
	pass # Replace with function body.


func _on_Button_pressed():
	pass # Replace with function body.


func _on_ButtonVoltarEC_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.


func _on_ButtonUnivEC_pressed():
	OS.shell_open("https://www.inteli.edu.br/engenharia-da-computacao/")
	pass # Replace with function body.
