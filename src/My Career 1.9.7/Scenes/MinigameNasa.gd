extends Node2D


func _on_Button_pressed():
	#muda de cena quando aperta o botao
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")
	pass # Replace with function body.


func _ready():
	get_tree().paused = false
	GameManager.interiorandar = false
	if GameManager.iniciominigameap == true: #Verifica se outro diálogo ja esta em cena
		GameManager.iniciominigameap = false
		get_tree().paused = true
		var dialog = Dialogic.start(str("RecrutadoraNasa-",GameManager.radialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
		dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
		dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
		# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
		add_child(dialog) 



func unpause(timeline_name):
	get_tree().paused = false #despausa o game ao fim do diálogo

func dialog_listener(string):
	match string:
		"rnend0":
			GameManager.rndialogcount += 1
		"rnend-1":
			GameManager.rndialogcount -= 1
