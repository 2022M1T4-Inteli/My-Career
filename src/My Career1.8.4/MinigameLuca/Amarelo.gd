extends RigidBody2D


signal clicked


var held = false
#cria variavel

func _physics_process(delta):
	if held:
		global_transform.origin = get_global_mouse_position()
#função que pega posição do cursor do mouse

func pickup():
	if held == false:
		held = true
#função que pega a sprite

func drop():
	if held:
		held = false
#função que larga a sprite

func _on_Amarelo_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		emit_signal("clicked", self)
#função que verifica a ação de de clicar na sprite
