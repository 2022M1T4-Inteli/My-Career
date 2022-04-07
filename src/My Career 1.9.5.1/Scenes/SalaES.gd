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


func _on_ButtonES_pressed():
	OS.shell_open("https://instagram.com/dafcoding")
	pass # Replace with function body.


func _on_ButtonAreatrabES_pressed():
	OS.shell_open("https://www.napratica.org.br/profissao-engenheiro-de-")
	pass # Replace with function body.


func _on_ButtonCarreiraES_pressed():
	OS.shell_open("https://www.undb.edu.br/blog/as-4-melhores-areas-de-atuacao-do-engenheiro-de-software")
	pass # Replace with function body.


func _on_ButtonVoltarES_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.


func _on_ButtonUnivES_pressed():
	OS.shell_open("https://www.inteli.edu.br/engenharia-de-software/")
	pass # Replace with function body.
