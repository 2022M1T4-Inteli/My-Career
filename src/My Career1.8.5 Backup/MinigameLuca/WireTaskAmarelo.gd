extends Sprite

var mouseIn = false
#cria variavel

func _ready():
	add_to_group("amarelo")

func _process(delta):
	if(mouseIn && Input.is_action_pressed("click")):
		set_position(get_viewport().get_mouse_position())
#função que movimenta a sprite

func _on_Area2D_mouse_entered():
	mouseIn = true
#verifica se o cursor do mouse esta dentro da area do colisor

func _on_Area2D_mouse_exited():
	mouseIn = false
#verifica se o cursor do mouse saio da area do colisor
