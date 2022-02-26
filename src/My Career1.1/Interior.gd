extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Legenda = get_tree().get_root().get_node("Level 2").get_node("Player").get_node("Camera2D").get_node("InstruçãoComando")
onready var Texto =get_tree().get_root().get_node("Level 2").get_node("Player").get_node("Camera2D").get_node("InstruçãoComando").get_node("Legenda")
# Called when the node enters the scene tree for the first time.
func _ready():
	print(Legenda)




func _on_AreaInteraoMentor_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		Legenda.show() 
		
	pass # Replace with function body.


func _on_AreaInteraoMentor_body_exited(body):
	if body.get_name() == "Player":
		Legenda.hide() 
	pass # Replace with function body.
