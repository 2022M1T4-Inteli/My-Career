extends Area2D

var activate = false


func _ready():
	connect("body_entered", self, '_on_NPC_body_entered')
	connect("body_exited", self, '_on_NPC_body_exited')


func _process(delta):
	$EButton.visible = activate


func _input(event):
	if get_node_or_null('DialogNode') == null: #verifica se outro diálogo ja esta em cena
		if event.is_action_pressed("ui_E") and activate: #faz com que a interação ocorra somente se a tecla designada (no caso, a tecla E) for acionada
			get_tree().paused = true #pausa o jogo durante o diálogo
			var dialog = Dialogic.start("timeline-1") #inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.pause_mode = Node.PAUSE_MODE_PROCESS
			dialog.connect("timeline_end", self, "unpause") #faz com que ao fim do timeline, o jogo despause
			add_child(dialog)


func unpause(timeline_name):
	get_tree().paused = false #despausa o game ao fim do diálogo


func _on_NPC_body_entered(body):
	if body.name == 'Player':
		activate = true


func _on_NPC_body_exited(body):
	if body.name == 'Player':
		activate = false
