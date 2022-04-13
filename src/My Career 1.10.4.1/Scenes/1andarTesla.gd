extends Node2D


func _ready():
	if GameManager.interiorFloor == false:
		get_node("MentorInterectionArea/Player").global_position = GameManager.positionandar
		# Caso o jogador não estivesse nessa cena quando ela executa a posição do player é a ultima armazeda
	if Dialogic.has_current_dialog_node() == false and GameManager.starts == true: #Verifica se outro diálogo ja esta em cena
		Dialogic.set_variable("godindice", 51)
		var dialog = Dialogic.start(str(GameManager.god,GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
		dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
		# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
		add_child(dialog) 
		GameManager.starts = false

func _on_TerreoTesla_body_entered(body):
	GameManager.groundInterior = false
	GameManager.interiorFloor = true
	get_tree().change_scene("res://Scenes/TerreoTesla.tscn")
#Quando o jogador sai a cena muda e as variaveis de estado também
