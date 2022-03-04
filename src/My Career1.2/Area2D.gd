extends Area2D


func _ready():
	pass # Replace with function body.



func _on_Area2D_body_entered(body):
	# Pega e muda para uma cena específica.
	get_tree().change_scene("res://Scenes/Level 1.tscn")
	
