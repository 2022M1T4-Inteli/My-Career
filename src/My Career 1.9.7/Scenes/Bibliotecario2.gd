extends Area2D

var activate = false
#Criando Variável responsável pela armazenamento do estado de presença do objeto player


func _ready():
	connect("body_entered", self, '_on_MentorInterectionArea_body_entered')
	connect("body_exited", self, '_on_MentorInterectionArea_body_exited')
#Criação da conexão da Area 2D para detecção do Objeto Player para caso ele esteja presente na Area 2D
	

func _process(delta):
	$"IconeE(2)".visible = activate
#O Obejeto Sprite EButton só é visivel caso o Player esteja na Area 2D


func _input(event):
	get_node("Player").global_position = GameManager.positionelevador
	if Dialogic.has_current_dialog_node() == false: #Verifica se outro diálogo ja esta em cena
		if event.is_action_pressed("ui_E") and activate: #Faz com que a interação ocorra somente se a tecla designada (no caso, a tecla E) for acionada
			get_tree().paused = true #Pausa o jogo durante o diálogo
			var dialog = Dialogic.start(str("Bibliotecario2-",GameManager.bl2dialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 



func dialog_listener(string):
	match string:
		"bl2end0":
			GameManager.bl2dialogcount += 1
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
