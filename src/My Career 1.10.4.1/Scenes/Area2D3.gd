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
	pass 

func _process(delta):
	if selected:
		followMouse()
		#pegar o movimento do mouse


func followMouse():
	position = get_global_mouse_position()
	#difinir a posiçao do mouse



func _on_Area2D3_input_event(viewport, event, shape_idx):
	if !position:
		if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
			if event.pressed:
				#botao direito do mouse para se mexer
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
					score = 0
					GameManager.ccxppoints = GameManager.ccxppoints + score
					#manda os score para variavel global
					print(score)


func _on_Area2D3_body_entered(body):
	if body.is_in_group("CERTO"):
		rightPlace = true
		#defini como lugar certo o grupo (area2D4)
	pass # Replace with function body.


func _on_Area2D3_body_exited(body):
	if body.is_in_group("CERTO"):
		rightPlace = false
		#difinir como qualquer outro lugar como errado 
	pass # Replace with function body.
