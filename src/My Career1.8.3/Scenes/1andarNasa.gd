extends Node2D

func _process(delta):
	if GameManager.minigame == true:
		GameManager.positionandar = get_node("Player").global_position

func _ready():
		if GameManager.interiorandar == false:
			get_node("Player").global_position = GameManager.positionandar
		if get_node_or_null('DialogNode') == null and GameManager.iniciona == true: #Verifica se outro diálogo ja esta em cena
			Dialogic.set_variable("godindice", 52)
			var dialog = Dialogic.start(str("AlanTuring-",GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
			GameManager.iniciona = false
			


func _on_TerreoNasa_body_entered(body):
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")

