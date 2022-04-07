extends RigidBody2D

signal clicked
#criar sinal 

var held = false
#variavel para mouse

func _ready():
	add_to_group("vermelho")
#adicinar ao grupo

func _on_RigidBody2Dred_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		emit_signal("clicked", self)
	#clicar com o botao segurar 

func _physics_process(delta):
	if held:
		global_transform.origin = get_global_mouse_position()
		#pegar a posição do moouse


func pickup():
	if held == false:
		held = true
		#segurar o botao


func drop():
	if held:
		held = false
		#soltar o botão



