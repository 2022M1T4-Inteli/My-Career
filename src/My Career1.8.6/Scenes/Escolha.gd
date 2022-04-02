extends Node



func _ready():
	pass 
	
func _process(delta):
	pass


func _on_Original_pressed():
	GameManager.select = 1
	GameManager.god = "AlanTuring-"
	get_tree().change_scene("res://Scenes/Loading.tscn")
#função que escolhe o personagem e o deus

func _on_Homen2_pressed():
	GameManager.select = 2
	GameManager.god = "AlanTuring-"
	get_tree().change_scene("res://Scenes/Loading.tscn")
#função que escolhe o personagem e o deus

func _on_Mulher_pressed():
	GameManager.select = 3
	GameManager.god = "AdaLove-"
	get_tree().change_scene("res://Scenes/Loading.tscn")
#função que escolhe o personagem e o deus

func _on_Mulher2_pressed():
	GameManager.select = 4
	GameManager.god = "AdaLove-"
	get_tree().change_scene("res://Scenes/Loading.tscn")
#função que escolhe o personagem e o deus

func _on_Original_mouse_entered():
	$First.visible = true
	$AudioStreamPlayer.play()
#função que faz sprite visivel e toca som

func _on_Homen2_mouse_entered():
	$Second.visible = true
	$AudioStreamPlayer.play()
#função que faz sprite visivel e toca som

func _on_Mulher_mouse_entered():
	$Third.visible = true
	$AudioStreamPlayer.play()
#função que faz sprite visivel e toca som

func _on_Mulher2_mouse_entered():
	$Fourth.visible = true
	$AudioStreamPlayer.play()
#função que faz sprite visivel e toca som

func _on_Original_mouse_exited():
	$First.visible = false
#função faz sprites invisivel

func _on_Homen2_mouse_exited():
	$Second.visible = false
#função faz sprites invisivel

func _on_Mulher_mouse_exited():
	$Third.visible = false
#função faz sprites invisivel

func _on_Mulher2_mouse_exited():
	$Fourth.visible = false
#função faz sprites invisivel
