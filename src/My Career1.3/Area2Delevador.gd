extends Node2D
# Called when the node enters the scene tree for the first time.
#func enter():
	#if is_colliding():
		
		#var normal = get_collision_normal()
	 # Replace with function body.
# Após o player entrar na area 2D, muda-se de cenário.
# Verifica se algo colidiu naquela área.
func _on_Area2D_body_entered(body):
# Pega e muda para uma cena específica.
	get_tree().change_scene("res://interiot.tscn")
