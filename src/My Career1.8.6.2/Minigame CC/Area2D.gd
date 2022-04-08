extends Area2D


var selected = false
#variavel para seleção da area 2d
onready var defaultPosition = self.position
#variavel para definir a posiçao inicial
var lugarCerto = false
#variavel para decidir o local certo
var posicao = false
#variavel para confirmar a posiçao 
var pontos = 0
#variavel para os pontos 

func _ready():
	pass 

func _process(delta):
	if selected:
		followMouse()
		#pegar o movimento do mouse



func followMouse():
	position = get_global_mouse_position()
	#difinir a posiçao do mouse


func _on_Area2D_input_event(viewport, event, shape_idx):
	if !posicao:
		if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
			#botao direito do mouse para se mexer
			if event.pressed:
				selected = true
				
			else:
				if !lugarCerto:
					selected = false
					self.position = defaultPosition
					#volta pra posição inicial quando o local esta errado 
				else:
					selected = false
					posicao = true
					#quando a posiçao esta certa 
					pontos = 60
					#soma 60 pontos
					Dialogic.set_variable("ccxppoints", pontos)
					#manda os pontos para variavel global
					print(pontos)



func _on_Area2D_body_entered(body):
	if body.is_in_group("CERTO"):
		lugarCerto = true
		#defini como lugar certo o grupo (area2D4)
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if body.is_in_group("CERTO"):
		lugarCerto = false
		#difinir como qualquer outro lugar como errado 
	pass 
