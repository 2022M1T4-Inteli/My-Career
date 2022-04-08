extends Control

var is_paused = false setget set_is_paused
var paused = false
onready var map = get_tree().get_root().get_node("Player/CanvasLayer/Sprite")


func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		GameManager.map = !GameManager.map
		yield(get_tree().create_timer(0.01), "timeout")
		self.is_paused = !is_paused


func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused

func _on_Return_pressed():
	self.is_paused = false


func _on_Quit_pressed():
	get_tree().quit()
#botão controle deixa layout visible=true botão "x" visible=false

func _on_Control_pressed():
	$LayoutControles.visible=true
	$Return.visible=false
	$Control.visible=false
	$Quit.visible=false

func _on_BotoX_pressed():
	$LayoutControles.visible=false
	$Return.visible=true
	$Control.visible=true
	$Quit.visible=true
	

func _on_Return_mouse_entered():
	$Buttom.playing = true


func _on_Control_mouse_entered():
	$Buttom.playing = true


func _on_Quit_mouse_entered():
	$Buttom.playing = true


func _on_BotoX_mouse_entered():
	$Buttom.playing = true
