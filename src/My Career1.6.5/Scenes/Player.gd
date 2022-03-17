extends KinematicBody2D

# Declaração da variavel velocidade 

onready var animationTree = $AnimationTree
onready var stateMachine = animationTree.get("parameters/playback")
onready var iconUnmuted =  get_node("CanvasLayer").get_node("SoundUnmuted")
onready var iconMuted = get_node("CanvasLayer").get_node("SoundMuted")
# Definir qual animação vai rodar 


func _ready():
	stateMachine.travel("Idle")
	
	if GameManager.goddialogcount >= 0 and GameManager.goddialogcount < 20:
		$BackgroundMusic1.play()
		$BackgroundMusic5.stop()
	
	elif GameManager.goddialogcount > 20 and GameManager.goddialogcount < 30:
		$BackgroundMusic2.play()
		$BackgroundMusic1.stop()
	
	elif GameManager.goddialogcount > 30 and GameManager.goddialogcount < 40:
		$BackgroundMusic3.play()
		$BackgroundMusic2.stop()
	
	elif GameManager.goddialogcount > 40 and GameManager.goddialogcount < 50:
		$BackgroundMusic4.play()
		$BackgroundMusic3.stop()
	
	elif GameManager.goddialogcount > 50 :
		$BackgroundMusic5.play()
		$BackgroundMusic4.stop()
# Quando executado o estado da animação do player se mantem no Idle que siginifica parado


func _physics_process(delta):
	var velocity = Vector2.ZERO
# Delcarando a variavel vetor

	if Input.is_action_pressed("ui_up"):
		velocity.y -= GameManager.velocidadevertical
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_down"):
		velocity.y += GameManager.velocidadevertical
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo y acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_right"):
		velocity.x += GameManager.velocidadehorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= GameManager.velocidadehorizontal
		stateMachine.travel("Walk")
# Caso o botão de navegação para cima for pressionado o vetor no eixo x decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	else:
		stateMachine.travel("Idle")
# Caso o personagem não se movimente a animação da sprite é setada com  o estado parado.
	
	move_and_slide(velocity)
# A função de movimento de objetos recebe o vetor de velocidade.



func _on_Mute_pressed():
	if $BackgroundMusic1.playing == true:
		$BackgroundMusic1.volume_db = -1000.0
		$BackgroundMusic1.playing = false
		iconUnmuted.hide()
		iconMuted.show()
		
		if $BackgroundMusic2.playing == true:
			$BackgroundMusic2.volume_db = -1000.0
			$BackgroundMusic2.playing = false
			iconUnmuted.hide()
			iconMuted.show()
			
			if $BackgroundMusic3.playing == true:
				$BackgroundMusic3.volume_db = -1000.0
				$BackgroundMusic3.playing = false
				iconUnmuted.hide()
				iconMuted.show()
				
				if $BackgroundMusic4.playing == true:
					$BackgroundMusic4.volume_db = -1000.0
					$BackgroundMusic4.playing = false
					iconUnmuted.hide()
					iconMuted.show()
					
					if $BackgroundMusic5.playing == true:
						$BackgroundMusic5.volume_db = -1000.0
						$BackgroundMusic5.playing = false
						iconUnmuted.hide()
						iconMuted.show()
						
					else:
						$BackgroundMusic5.volume_db = 0.0
						$BackgroundMusic5.playing = true
						iconUnmuted.show()
						iconMuted.hide()
				
				else:
					$BackgroundMusic4.volume_db = 0.0
					$BackgroundMusic4.playing = true
					iconUnmuted.show()
					iconMuted.hide()
		
			else:
				$BackgroundMusic3.volume_db = 0.0
				$BackgroundMusic3.playing = true
				iconUnmuted.show()
				iconMuted.hide()
			
		else:
			$BackgroundMusic2.volume_db = 0.0
			$BackgroundMusic2.playing = true
			iconUnmuted.show()
			iconMuted.hide()
		
	else:
		$BackgroundMusic1.volume_db = 0.0
		$BackgroundMusic1.playing = true
		iconUnmuted.show()
		iconMuted.hide()
		


func _on_Button2_mouse_entered():
	$Buttom.playing = true


func _on_Mute_mouse_entered():
	$Buttom.playing = true


func _on_Button_mouse_entered():
	$Buttom.playing = true
