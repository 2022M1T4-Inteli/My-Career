extends Area2D

var activate = false
#Criando Variável responsável pela armazenamento do estado de presença do objeto player

func _dialog():
	Dialogic.set_variable("ecxppoints", 0)
	Dialogic.set_variable("ecqzpoints", 0)
#setando a variavel em 0

func _ready():
	connect("body_entered", self, '_on_MentorInterectionArea_body_entered')
	connect("body_exited", self, '_on_MentorInterectionArea_body_exited')
#Criação da conexão da Area 2D para detecção do Objeto Player para caso ele esteja presente na Area 2D
	

func _process(delta):
	$EButton.visible = activate
#O Obejeto Sprite EButton só é visivel caso o Player esteja na Area 2D


func _input(event):
	if get_node_or_null('DialogNode') == null: #Verifica se outro diálogo ja esta em cena
		if event.is_action_pressed("ui_E") and activate: #Faz com que a interação ocorra somente se a tecla designada (no caso, a tecla E) for acionada
			get_tree().paused = true #Pausa o jogo durante o diálogo
			var dialog = Dialogic.start(str("RecrutadoraTesla-",GameManager.rtdialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 


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

func unpause(timeline_name):
	get_tree().paused = false #despausa o game ao fim do diálogo


func _on_MentorInterectionArea_body_entered(body):
	if body.name == 'Player':
		activate = true
#Caso a Area 2D identifique o objeto Player então a variável "activate" recebe verdadeiro

func _on_MentorInterectionArea_body_exited(body):
	if body.name == 'Player':
		activate = false
#Caso a Area 2D não identifique o objeto Player então a variável "activate" recebe false
