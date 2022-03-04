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
		#enquanto a tecla estiver precionada andar para cima
	elif Input.is_action_pressed("ui_down"):
		velocity.y += speed
		stateMachine.travel("Walk")
		#enquanto a tecla estiver precionada andar para baixo
	elif Input.is_action_pressed("ui_right"):
		velocity.x += speed
		$Sprite.scale.x = 1
		stateMachine.travel("Walk")
		#enquanto a tecla estiver precionada andar para direita
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= speed
		$Sprite.scale.x = -1
		stateMachine.travel("Walk")
		#enquanto a tecla estiver precionada andar para esquerda
	else:
		stateMachine.travel("Idle")
	# colocar a anumação parado
	
	move_and_slide(velocity)
	
#	func _on_Area2D_body_entered(body):
## Pega e muda para uma cena específica.
#	get_tree().change_scene("res://entrar.tscn")
