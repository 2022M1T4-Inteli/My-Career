extends Camera2D

onready var Box = get_node("/root/OpenWorld/Player/CaixaNome")
onready var PlayerName = get_node("/root/OpenWorld/Player/CaixaNome/LineEdit")
onready var slot = Dialogic.get_variable("godindice")

func _ready():
	pass 

func _process(delta):
	if Dialogic.get_variable("godindice") != slot:
		_on_Button_pressed()
		slot = Dialogic.get_variable("godindice")
#Se o dialogo do deus do jogo mudar ele executa a fala do deus do jogo que foi mudada

func _getcharactersName():
	PlayerName.grab_focus()
	PlayerName.set_cursor_position(len(PlayerName.text))
	Box.visible = true
#Determina a velocidade do movimento do personagem como 0, coloca o cursor no line edit
# e deixa o objeto visivel para o usuário colocar o nome

func _movement():
	GameManager.verticalSpeed = 500
	GameManager.horizontalSpeed =500

func _on_Button_pressed():
	if Dialogic.has_current_dialog_node() == false: #Verifica se outro diálogo ja esta em cena
			var dialog = Dialogic.start(str(GameManager.god,GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
	else:
		pass

func dialog_listener(string):
	match string:
		"bpend0":
			GameManager.bpdialogcount += 1
		"bpend-1":
			GameManager.bpdialogcount -= 1
		"emend0":
			GameManager.emdialogcount += 1
		"emend-1":
			GameManager.emdialogcount -= 1
		"dvend0":
			GameManager.dvdialogcount += 1
		"dvend-1":
			GameManager.dvdialogcount -= 1
		"stend0":
			GameManager.stdialogcount += 1
		"stend-1":
			GameManager.stdialogcount -= 1
		"apend0":
			GameManager.apdialogcount += 1
		"apend-1":
			GameManager.apdialogcount -= 1
		"msend0":
			GameManager.msdialogcount += 1
		"msend-1":
			GameManager.msdialogcount -= 1
		"nsend0":
			GameManager.nsdialogcount += 1
		"nsend-1":
			GameManager.nsdialogcount -= 1
		"tsend0":
			GameManager.tsdialogcount += 1
		"tsend-1":
			GameManager.tsdialogcount -= 1
		"rnend0":
			GameManager.rndialogcount += 1
		"rnend-1":
			GameManager.rndialogcount -= 1
		"rtend0":
			GameManager.rtdialogcount += 1
		"rtend-1":
			GameManager.rtdialogcount -= 1
		"rmend0":
			GameManager.rmdialogcount += 1
		"rmend-1":
			GameManager.rmdialogcount -= 1
		"raend0":
			GameManager.radialogcount += 1
		"raend-1":
			GameManager.radialogcount -= 1
		"godend0":
			GameManager.goddialogcount += 1
		"godend-1":
			GameManager.goddialogcount -= 1
#Nessa função caso uma das strings seja detectada então é executada uma série de instruções para mudança de dialogo e outros.


func _on_Button2_pressed():
		Dialogic.set_variable("playername",PlayerName.text)
		Box.visible = false
		# Variavel nome do jogador recebe o texto digitado
		# O box de digitação fica invisivel e o moviemnto do jogador volta
		if Dialogic.has_current_dialog_node() == false: #Verifica se outro diálogo ja esta em cena
			var dialog = Dialogic.start(str(GameManager.god,GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog)
			

func _on_LineEdit_text_entered(new_text):
		Dialogic.set_variable("playername",PlayerName.text)
		Box.visible = false
		# Variavel nome do jogador recebe o texto digitado
		# O box de digitação fica invisivel
		if Dialogic.has_current_dialog_node() == false: #Verifica se outro diálogo ja esta em cena
			var dialog = Dialogic.start(str(GameManager.god,GameManager.goddialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog)
