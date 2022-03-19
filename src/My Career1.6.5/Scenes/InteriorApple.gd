extends Sprite



func _ready():
	pass 



func _on_TerreoTesla_body_entered(body):
	get_tree().change_scene("res://Scenes/TerreoApple.tscn")
	pass 
