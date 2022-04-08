extends Control

var is_paused = false setget set_is_paused
var paused = false

func _unhandled_input(event): #Faz com que ao apertar o botão "pause"(Esc) o jogo pause e o menu apareça
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused #Torna a variável is_paused o contrário do que ela está, alternando entre true e false


func set_is_paused(value): #Faz com que ao pausar o jogo a interface do menu apareça
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_Return_pressed(): #Despausa o jogo ao clicar em "Return"
	self.is_paused = false


func _on_Quit_pressed(): #Fecha o jogo ao clicar em "Quit".
	get_tree().quit()


func _on_Control_pressed(): #Faz com que o layout dos controles apareça e os botões do menu de pause sejam destivados.
	$LayoutControles.visible=true
	$Return.visible=false
	$Control.visible=false
	$Quit.visible=false

func _on_BotoX_pressed(): #Esconde o layout dos controles e volta ao menu de pause, habilitando novamente os botões do menu de pause.
	$LayoutControles.visible=false
	$Return.visible=true
	$Control.visible=true
	$Quit.visible=true
	

func _on_Return_mouse_entered(): #Quando o mouse passar por cima do botão, o som de "botão" toca.
	$Buttom.playing = true


func _on_Control_mouse_entered(): #Quando o mouse passar por cima do botão, o som de "botão" toca.
	$Buttom.playing = true


func _on_Quit_mouse_entered(): #Quando o mouse passar por cima do botão, o som de "botão" toca.
	$Buttom.playing = true


func _on_BotoX_mouse_entered(): #Quando o mouse passar por cima do botão, o som de "botão" toca.
	$Buttom.playing = true
