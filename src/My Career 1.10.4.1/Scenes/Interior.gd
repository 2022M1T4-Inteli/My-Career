extends Node2D

func _ready():
	if GameManager.groundInterior == false:
		get_node("Player").global_position = GameManager.elevatorPosition
	# Caso o jogador não estivesse nessa cena quando ela executa a posição do player é a ultima armazeda

func _on_OpenWorld_body_entered(body):
	GameManager.groundInterior = false
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
	#Quando o player volta para a cidade ele muda de cena e deixa de estar no terreo

func _on_Area2DApple_body_entered(body):
	GameManager.elevatorPosition = get_node("Player").global_position + Vector2(-100,0)
	GameManager.groundInterior = false
	GameManager.interiorFloor = true
	GameManager.firsttimeap = 1
	get_tree().change_scene("res://Scenes/1andarApple.tscn")
	#Quando o jogador entra na area 2D o jogo muda de cena, armazena a varial de posição global e
	#muda o estado de qual lugar ele esta em cada variavel interior, além da varial de estado de primeira vez
	#mudar

func _on_Area2DMicrosoft_body_entered(body):
	GameManager.elevatorPosition = get_node("Player").global_position + Vector2(-100,0)
	GameManager.groundInterior = false
	GameManager.interiorFloor = true
	GameManager.firsttimems = 1
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")
	#Quando o jogador entra na area 2D o jogo muda de cena, armazena a varial de posição global e
	#muda o estado de qual lugar ele esta em cada variavel interior, além da varial de estado de primeira vez
	#mudar

func _on_Area2DNasa_body_entered(body):
	GameManager.elevatorPosition = get_node("Player").global_position + Vector2(-100,0)
	GameManager.groundInterior = false
	GameManager.interiorFloor = true
	GameManager.firsttimens = 1
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")
	#Quando o jogador entra na area 2D o jogo muda de cena, armazena a varial de posição global e
	#muda o estado de qual lugar ele esta em cada variavel interior, além da varial de estado de primeira vez
	#mudar

func _on_Area2DTesla_body_entered(body):
	GameManager.elevatorPosition = get_node("Player").global_position + Vector2(-100,0)
	GameManager.groundInterior = false
	GameManager.interiorFloor = true
	GameManager.firsttimets = 1
	get_tree().change_scene("res://Scenes/1andarTesla.tscn")
	#Quando o jogador entra na area 2D o jogo muda de cena, armazena a varial de posição global e
	#muda o estado de qual lugar ele esta em cada variavel interior, além da varial de estado de primeira vez
	#mudar
