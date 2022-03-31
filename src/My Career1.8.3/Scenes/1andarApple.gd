extends Sprite

func _ready():
		if get_node_or_null('DialogNode') == null and GameManager.inicioap == true: #Verifica se outro diálogo ja esta em cena
			Dialogic.set_variable("godindice", 54)
			var dialog = Dialogic.start(str("AlanTuring-",GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
			GameManager.inicioap = false


func _on_TerreoTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoApple.tscn")
