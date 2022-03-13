extends Sprite

func _ready():
	pass # Replace with function body.

func _on_OpenWorld_body_entered(body):
	get_tree().change_scene("res://Scenes/OpenWorld.tscn")
