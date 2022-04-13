extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GameManager.ajudabiblioteca = false
	get_tree().paused = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ButtonCC_pressed():
	OS.shell_open("https://www.instagram.com/rafaballerini/")
	pass # Replace with function body.


func _on_ButtonCarreiraCC_pressed():
	OS.shell_open("https://www.guiadacarreira.com.br/guia-das-profissoes/ciencia-da-computacao/")
	pass # Replace with function body.


func _on_ButtonAreatrabCC_pressed():
	OS.shell_open("https://www.youtube.com/watch?v=KHQzOQIGMow")
	pass # Replace with function body.


func _on_ButtonVoltarCC_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.


func _on_ButtonUnivCC_pressed():
	OS.shell_open("https://www.inteli.edu.br/ciencia-da-computacao/")
	pass # Replace with function body.
