extends KinematicBody2D

var speedvertcl = 500
var speedhorizontal = 500
# Declaração da variavel velocidade 

onready var animationTree = $AnimationTree
onready var stateMachine = animationTree.get("parameters/playback")
# Definir qual animação vai rodar 


func _ready():
	stateMachine.travel("Idle")
# Quando executado o estado da animação do player se mantem no Idle que siginifica parado


func _physics_process(delta):
	var velocity = Vector2.ZERO
# Delcarando a variavel vetor

	if Input.is_action_pressed("ui_up"):
		velocity.y -= speedvertcl
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speedvertcl
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speedhorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= speedhorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	else:
		stateMachine.travel("Idle")
# Caso o personagem não se movimente a animação da sprite é setada com  o estado parado.
	
	move_and_slide(velocity)
# A função de movimento de objetos recebe o vetor de velocidade.


func _on_Mute_pressed():
	pass # Replace with function body.
