extends KinematicBody2D

#Declaração de variaveis
var speed = 100
#definir a velocidade que vai andar 

onready var animationTree = $AnimationTree
onready var stateMachine = animationTree.get("parameters/playback")
#Definir qual animação vai rodar 

func _ready():
	
	stateMachine.travel("Idle")

func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= speed
		stateMachine.travel("Walk")
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed
		stateMachine.travel("Walk")
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
		$Sprite.scale.x = 1
		stateMachine.travel("Walk")
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		$Sprite.scale.x = -1
		stateMachine.travel("Walk")
	else:
		stateMachine.travel("Idle")
	# definir qual direção o personagem vai andar 
	
	move_and_slide(velocity)
