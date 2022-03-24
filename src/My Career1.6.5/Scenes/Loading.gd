extends Node2D


onready var playLoading = $Loading
# Declarando o objeto PlayLoading para poder trabalhar com as propriedades 
# da Sprite Animada.


func _ready():
	playLoading.play()
# Quando a cena é executada o audio inicia através da função play()


func _on_Loading_animation_finished():
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
# Quando a animação é finalizada é trocada para a cena da execução do jogo

