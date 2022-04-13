extends KinematicBody2D


#func _physics_process(delta):
#	var velocity = Vector2.ZERO
## Delcarando a variavel vetor
#
#	if Input.is_action_pressed("ui_up"):
#		velocity.y -= GameManager.verticalSpeedmp
## Caso o botão de navegação para cima for pressionado o vetor no eixo y decrementa a velocidade com valor speed
##e a animação da sprite é setada com o estado de movimento.
#
#	elif Input.is_action_pressed("ui_down"):
#		velocity.y += GameManager.verticalSpeedmp
## Caso o botão de navegação para cima for pressionado o vetor no eixo y acrescenta a velocidade com valor speed
##e a animação da sprite é setada com o estado de movimento.
#
#	elif Input.is_action_pressed("ui_right"):
#		velocity.x += GameManager.horizontalSpeedmp
## Caso o botão de navegação para cima for pressionado o vetor no eixo x acrescenta a velocidade com valor speed
##e a animação da sprite é setada com o estado de movimento.
#
#
#	elif Input.is_action_pressed("ui_left"):
#		velocity.x -= GameManager.horizontalSpeedmp
## Caso o botão de navegação para cima for pressionado o vetor no eixo x decrementa a velocidade com valor speed##e a animação da sprite é setada com o estado de movimento.
#
#
#	else:
#		pass
## Caso o personagem não se movimente a animação da sprite é setada com  o estado parado.
#
#	move_and_slide(velocity)
## A função de movimento de objetos recebe o vetor de velocidade.
