extends Area2D


var selected = false
onready var defaultPosition = self.position
var lugarCerto = false
var posicao = false
var pontos = 0

func _ready():
	pass 

func _process(delta):
	if selected:
		followMouse()



func followMouse():
	position = get_global_mouse_position()


func _on_Area2D_input_event(viewport, event, shape_idx):
	if !posicao:
		if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
			if event.pressed:
				selected = true
				
			else:
				if !lugarCerto:
					selected = false
					self.position = defaultPosition
				else:
					selected = false
					posicao = true
					pontos = 100
					Dialogic.set_variable("ccxppoints", pontos)
					print(pontos)



func _on_Area2D_body_entered(body):
	if body.is_in_group("CERTO"):
		lugarCerto = true
	pass # Replace with function body.


func _on_Area2D_body_exited(body):
	if body.is_in_group("CERTO"):
		lugarCerto = false
	pass 
