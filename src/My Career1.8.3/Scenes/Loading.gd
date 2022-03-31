extends Node2D


onready var PlayLoading = $Loading
# Declarando o objeto PlayLoading para poder trabalhar com as propriedades 
# da Sprite Animada.


func _ready():
	PlayLoading.play()
# Quando a cena é executada o audio inicia através da função play()


func _on_Loading_animation_finished():
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
# Quando a animação é finalizada é trocada para a cena da execução do jogo

func _process(delta):
	yield(get_tree().create_timer(6), "timeout")
	if Input.is_action_pressed("ui_select") or Input.is_action_pressed("click_left") or Input.is_action_pressed("ui_space"):
		get_tree().change_scene("res://Scenes/OpenWorld.tscn")
