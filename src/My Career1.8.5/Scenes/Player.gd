extends KinematicBody2D

# Declaração da variavel velocidade 

var player1_path_sprite = "res://Sprites/Personagens/CharacterSheet.png"
var player2_path_sprite =  "res://Sprites/Personagens/player4_charsheet.png"
var player3_path_sprite =  "res://Sprites/Personagens/player2_charsheet.png"
var player4_path_sprite = "res://Sprites/Personagens/player3_charsheet.png"
#faz o preload das sprites

onready var animationTree = $AnimationTree
onready var stateMachine = animationTree.get("parameters/playback")
onready var iconUnmuted = get_node("CanvasLayer").get_node("Mute").get_node("SoundUnmuted")
onready var iconMuted = get_node("CanvasLayer").get_node("Mute").get_node("SoundMuted")
onready var playerminimapa = $"CanvasLayer/Sprite/MapaExterno/KinematicBody2D"

# Definir qual animação vai rodar 

func _ready():
	
	if GameManager.select == 1:
		$Sprite.texture = load(player1_path_sprite)
	#if chama o load da sprite e faz a troca efetiva do personagem
	
	elif GameManager.select == 2:
		$Sprite.texture = load(player2_path_sprite)
	#if chama o load da sprite e faz a troca efetiva do personagem
	
	elif GameManager.select == 3:
		$Sprite.texture = load(player3_path_sprite)
	#if chama o load da sprite e faz a troca efetiva do personagem
	
	elif GameManager.select == 4:
		$Sprite.texture = load(player4_path_sprite)
	#if chama o load da sprite e faz a troca efetiva do personagem
	
	stateMachine.travel("Idle")
# Quando executado o estado da animação do player se mantem no Idle que siginifica parado

	if int (Dialogic.get_variable("godindice")) >= 0 and int (Dialogic.get_variable("godindice")) < 20:
		$BackgroundMusic.stream = load("res://Audios/Track 1.mp3")
		$BackgroundMusic.play()
	
	elif int (Dialogic.get_variable("godindice")) > 20 and int (Dialogic.get_variable("godindice")) < 30:
		$BackgroundMusic.stream = load("res://Audios/Track 2.mp3")
		$BackgroundMusic.play()
		
	elif int (Dialogic.get_variable("godindice")) > 30 and int (Dialogic.get_variable("godindice")) < 40:
		$BackgroundMusic.stream = load("res://Audios/Track 3.mp3")
		$BackgroundMusic.play()

	elif int (Dialogic.get_variable("godindice")) > 40 and int (Dialogic.get_variable("godindice")) < 60:
		$BackgroundMusic.stream = load("res://Audios/Track 4.mp3")
		$BackgroundMusic.play()

	elif int (Dialogic.get_variable("godindice")) > 60 :
		$BackgroundMusic.stream = load("res://Audios/Track 5.mp3")
		$BackgroundMusic.play()
#Verifica o espectro do valor da variavel e muda o arquivo da música tocada no fundo

func _physics_process(delta):
	if get_tree().get_current_scene().get_name() == "OpenWorld":
		get_node("CanvasLayer/Sprite").visible = true
	else:
		get_node("CanvasLayer/Sprite").visible = false
	#Caso a cena atual seja o OpenWorld o minimapa aparece
	
	playerminimapa.position.x = ($Sprite.global_position.x/7)
	playerminimapa.position.y = ($Sprite.global_position.y/7)
	#A posição global do player no minimapa é a posição global do player dividido pela escala do mapa
	
	var velocity = Vector2.ZERO
# Delcarando a variavel vetor
	if Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_up"):
		velocity.x -= GameManager.velocidadehorizontal/2
		velocity.y -= 0
		stateMachine.travel("Walk")

	elif Input.is_action_pressed("ui_left") and Input.is_action_pressed("ui_down"):
		velocity.x -= GameManager.velocidadehorizontal/2
		velocity.y += 0
		stateMachine.travel("Walk")

	elif Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_up"):
		velocity.x += GameManager.velocidadehorizontal/2
		velocity.y -= 0
		stateMachine.travel("Walk")

	elif Input.is_action_pressed("ui_right") and Input.is_action_pressed("ui_down"):
		velocity.x += GameManager.velocidadehorizontal/2
		velocity.y += 0
		stateMachine.travel("Walk")
		
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
		$Sprite.scale = Vector2(8,8)
# Caso o botão de navegação para cima for pressionado o vetor no eixo x acrescenta a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.
		
		
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= GameManager.velocidadehorizontal
		stateMachine.travel("Walk")
		$Sprite.scale = Vector2(-8,8)
# Caso o botão de navegação para cima for pressionado o vetor no eixo x decrementa a velocidade com valor speed
#e a animação da sprite é setada com o estado de movimento.

	else:
		stateMachine.travel("Idle")
# Caso o personagem não se movimente a animação da sprite é setada com  o estado parado.

	move_and_slide(velocity)
# A função de movimento de objetos recebe o vetor de velocidade.


func _on_Button2_mouse_entered():
	$Buttom.playing = true
#QUando o mouse passa por cima do botão toca um som


func _on_Mute_mouse_entered():
	$Buttom.playing = true
#QUando o mouse passa por cima do botão toca um som

func _on_Button_mouse_entered():
	$Buttom.playing = true
#QUando o mouse passa por cima do botão toca um som

func _on_Mute_pressed():
	if $BackgroundMusic.playing == true:
		$BackgroundMusic.volume_db = -1000.0
		$BackgroundMusic.playing = false
		iconUnmuted.hide()
		iconMuted.show()
		
	else:
		$BackgroundMusic.volume_db = -10.0
		$BackgroundMusic.playing = true
		iconUnmuted.show()
		iconMuted.hide()
#Caso o botão seja pressionado ele verifica se a música esta tocando caso seja verdade
# diminui o volume e deixa o botão de mutado visivel e o de desmutado invisivel
# Caso contrario aumenta o volume e deixa o botão de mutado invisivel e o de desmutado visivel



