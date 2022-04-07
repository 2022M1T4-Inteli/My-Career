extends Node2D

var resposta_certa = false
var inicio = true
var held_object = null
var pontos = 0


func _on_RigidBody2Dred_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()
	
	
func _unhandled_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if held_object and !event.pressed: 
			held_object.drop()
			held_object = null
	
	
func _on_Area2Dvermelho_body_entered(body):
	if body.is_in_group("vermelho"):
		resposta_certa = true
		pontos += 15
		$RigidBody2Dred.visible = false
		$RigidBody2Dred.input_pickable = false
		$WireTaskRed.visible = true
	else:
		resposta_certa = false


func _on_RigidBody2Damarelo_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()


func _on_Area2D3amarelo_body_entered(body):
	if body.is_in_group("amarelo"):
		resposta_certa = true
		pontos += 15
		$RigidBody2Damarelo.visible = false
		$RigidBody2Damarelo.input_pickable = false
		$WireTaskAmarelo.visible = true
		print(pontos)
	else:
		resposta_certa = false


func _on_RigidBody2D2roxo_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()


func _on_Area2D4roxo_body_entered(body):
	if body.is_in_group("roxo"):
		resposta_certa = true
		pontos += 15
		$RigidBody2D2roxo.visible = false
		$RigidBody2D2roxo.input_pickable = false
		$WireTaskRoxo.visible = true
	else:
		resposta_certa = false


func _on_RigidBody2D3azul_clicked(object):
	if !held_object:
		held_object = object
		held_object.pickup()


func _on_Area2D2azul_body_entered(body):
	if body.is_in_group("azul"):
		resposta_certa = true
		pontos += 15
		$RigidBody2D3azul.visible = false
		$RigidBody2D3azul.input_pickable = false
		$WireTaskBlue.visible = true
		
		
func _process(delta):
	$Labelpontos.text = "Pontos:" + str(pontos)


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/1andarTesla.tscn") 
