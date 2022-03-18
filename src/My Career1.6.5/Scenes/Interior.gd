extends Sprite

var firstTime = 0
#Declara variavel como 0

func _ready():
	pass

func _on_OpenWorld_body_entered(body):
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
#Função troca o personagem de cena
func _on_Area2DApple_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarApple.tscn")
#Função troca o personagem de cena
func _on_Area2DMicrosoft_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")
#Função troca o personagem de cena
func _on_Area2DNasa_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarNasa.tscn")
#Função troca o personagem de cena
func _on_Area2DTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/1andarTesla.tscn")
#Função troca o personagem de cena
