extends Area2D


var selected = false
#variavel para seleção da area 2d
onready var defaultPosition = self.position
#variavel para definir a posiçao inicial
var rightPlace = false
#variavel para decidir o local certo
var position = false
#variavel para confirmar a posiçao 
var score = 0
#variavel para os score 

func _ready():
	get_tree().paused = false
	GameManager.interiorFloor = false
	if GameManager.starMinigameap == true: #Verifica se outro diálogo ja esta em cena
		GameManager.starMinigameap = false
		get_tree().paused = true
		var dialog = Dialogic.start(str("RecrutadoraNasa-",GameManager.rndialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
		dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
		dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
		# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
		add_child(dialog) 

func _process(delta):
	if selected:
		followMouse()
		#pegar o movimento do mouse

func dialog_listener(string):
	match string:
		"bpend0":
			GameManager.bpdialogcount += 1
		"bpend-1":
			GameManager.bpdialogcount -= 1
		"emend0":
			GameManager.emdialogcount += 1
		"emend3":
			GameManager.emdialogcount += 3
		"emend-2":
			GameManager.emdialogcount -= 2
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


func followMouse():
	position = get_global_mouse_position()
	#difinir a posiçao do mouse


func _on_Area2D_input_event(viewport, event, shape_idx):
	if !position:
		if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
			#botao direito do mouse para se mexer
			if event.pressed:
				selected = true
				
			else:
				if !rightPlace:
					selected = false
					self.position = defaultPosition
					#volta pra posição inicial quando o local esta errado 
				else:
					selected = false
					position = true
					#quando a posiçao esta certa 
					score = 60
					#soma 60 score
					Dialogic.set_variable("ccxppoints", score)
					#manda os score para variavel global
					print(score)



func _on_Area2D_body_entered(body):
	if body.is_in_group("CERTO"):
		rightPlace = true
		#defini como lugar certo o grupo (area2D4)
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if body.is_in_group("CERTO"):
		rightPlace = false
		#difinir como qualquer outro lugar como errado 
	pass 
