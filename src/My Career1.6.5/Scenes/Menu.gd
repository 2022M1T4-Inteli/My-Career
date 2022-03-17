extends Node2D


onready var music = $BackgroundMusic
onready var iconUnmuted =  $SoundUnmuted
onready var iconMuted = $SoundMuted
#Declarando os objetos da cena para alterar suas propriedades


var playing = true
#Declarando variável de estado do áudio


func _ready():
	pass 


func _on_Play_pressed():
	get_tree().change_scene("res://Scenes/Loading.tscn")
# Função quando o botão play é pressionado muda para a cena de Loading


func _on_Quit_pressed():
	get_tree().quit()
# Função quando o botão pressed é pressionado encerra o processo do jogo


func _on_Mute_pressed():
	if playing == true:
		music.volume_db = -1000.0
		playing = false
		iconUnmuted.hide()
		iconMuted.show()
		
	else:
		music.volume_db = 0.0
		playing = true
		iconUnmuted.show()
		iconMuted.hide()
	
# Função quando o botão mute é pressionado analisa se a variável "playing" é verdadeira troca a imagem 
#que representa o som para que representa o som mutado e torna a variável "playing" falsa, caso ela 
#seja falsa então troca a imagem que representa o som mutado pela que representa o som e torna a 
#variável "playing" vervadeira.
	



func _on_Play_mouse_entered():
	$Buttom.playing = true


func _on_Quit_mouse_entered():
	$Buttom.playing = true


func _on_Mute_mouse_entered():
	$Buttom.playing = true
