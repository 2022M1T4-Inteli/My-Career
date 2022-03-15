extends Sprite


func _on_TerreoTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoTesla.tscn")
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoMicrosoft.tscn")
	pass # Replace with function body.


func _on_TerreoNasa_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")
	pass # Replace with function body.
