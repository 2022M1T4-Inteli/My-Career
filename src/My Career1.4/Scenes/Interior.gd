extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var Legenda =get_tree().get_root().get_node("Level 2").get_node("Player").get_node("Camera2D").get_node("InstruçãoComando")
onready var Texto =get_tree().get_root().get_node("Level 2").get_node("Player").get_node("Camera2D").get_node("InstruçãoComando").get_node("Legenda")
# Criando as variáveis Legenda e Texto para que seja possível puxar valores dos repectivos objetos de Player
func _ready():
	
	pass

func _on_AreaInteraoMentor_body_entered(body):
	print(body.get_name())
	if body.get_name() == "Player":
		Legenda.show() 
		
	pass # Essa função diz que quando a área 2D for preenchida pelo objeto Player então a Variável legenda deve ser visível


func _on_AreaInteraoMentor_body_exited(body):
	if body.get_name() == "Player":
		Legenda.hide() 
	pass # Essa função diz que quando a área 2D não for preenchida pelo objeto Player então a Variável legenda deve ser oculta
