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


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/SalaSI.tscn")
	pass # Replace with function body.


func _on_Button2_pressed():
	get_tree().change_scene("res://Scenes/SalaCC.tscn")
	pass # Replace with function body.


func _on_Button3_pressed():
	get_tree().change_scene("res://Scenes/SalaEC.tscn")
	pass # Replace with function body.


func _on_Button4_pressed():
	get_tree().change_scene("res://Scenes/SalaES.tscn")
	pass # Replace with function body.


func _on_Button1_pressed():
	OS.shell_open("https://www.instagram.com/acientistadedados/?utm_medium=copy_link")
	pass # Replace with function body.


func _on_ButtonComputer_pressed():
	get_tree().change_scene("res://Scenes/Computer.tscn")
	pass # Replace with function body.



func _on_ButtonCarreiraSI_pressed():
	OS.shell_open("https://www.youtube.com/watch?v=cPLJ-hV1oxU")
	pass # Replace with function body.


func _on_ButtonAreaTrab_pressed():
	OS.shell_open("https://www.infojobs.com.br/vagas-de-emprego-")
	pass # Replace with function body.


func _on_ButtonVoltarSI_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.


func _on_ButtonUnivSI_pressed():
	OS.shell_open("https://www.inteli.edu.br/sistemas-de-informacao/")
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
