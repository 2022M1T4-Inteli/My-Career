extends Camera2D

onready var Box = get_node("/root/OpenWorld/Player/CaixaNome")
onready var PlayerName = get_node("/root/OpenWorld/Player/CaixaNome/TextEdit")

func _ready():
	pass 
	
func _process(delta):
	if Input.is_action_pressed("ui_enter"):
		_on_Button2_pressed()

func _getcharactersName():
		Box.visible = true

func _on_Button_pressed():
	if get_node_or_null('DialogNode') == null: #Verifica se outro diálogo ja esta em cena
			var dialog = Dialogic.start(str("AlanTuring-",GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 

func dialog_listener(string):
	match string:
		"godend0":
			GameManager.goddialogcount += 1
#Nessa função caso uma das strings seja detectada então é executada uma série de instruções para mudança de dialogo e outros.


func _on_Button2_pressed():
		Dialogic.set_variable("playername",PlayerName.text)
		Box.visible = false
		if get_node_or_null('DialogNode') == null: #Verifica se outro diálogo ja esta em cena
			var dialog = Dialogic.start(str("AlanTuring-",GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog)
