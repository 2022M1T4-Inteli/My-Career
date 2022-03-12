extends Area2D


var activate = false
#Declarando a Variável booleana activate para permitir o dialogo


func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')


func _process(delta):
	$E.visible = activate


func _input(event):
	if get_node_or_null('DialogNode') == null: 
#Verifica se outro diálogo ja esta em cena
		if event.is_action_pressed("ui_E") and activate: 
#Faz com que a interação ocorra somente se a tecla designada (no caso, a tecla E) for acionada
			get_tree().paused = true 
#Pausa o jogo durante o diálogo
			var dialog = Dialogic.start("timeline-1") 
#Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause") 
#Faz com que ao fim do timeline, o jogo despause
			add_child(dialog)


func unpause(timeline_name):
	get_tree().paused = false 
#Despausa o game ao fim do diálogo


func _on_NPC_body_entered(body):
	if body.name == 'Player':
		activate = true
# Quando o player entra na area 2D, a variável activate recebe verdadeiro


func _on_NPC_body_exited(body):
	if body.name == 'Player':
		activate = false
# Quando o player sai na area 2D, a variável activate recebe falso
