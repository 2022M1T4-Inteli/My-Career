extends Node2D

var escolha = 0
#variavel para limitar as escolhas do jogador 3
var podeEscolher = true
# variavel para o escolher
var pontos = 0 
# variavel para a contagem de pontos



func _ready():
	get_tree().paused = false
	GameManager.interiorandar = false
	if GameManager.iniciominigamems == true: #Verifica se outro diálogo ja esta em cena
		GameManager.iniciominigamems = false
		get_tree().paused = true
		var dialog = Dialogic.start(str("RecrutadoraMicrosoft-",GameManager.rmdialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
		dialog.pause_mode = Node.PAUSE_MODE_PROCESS
		dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
		dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
		# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
		add_child(dialog) 
	else:
		$pontos.text="Pontos: " + str(pontos)


func dialog_listener(string):
	match string:
		"bpend0":
			GameManager.bpdialogcount += 1
		"bpend-1":
			GameManager.bpdialogcount -= 1
		"emend0":
			GameManager.emdialogcount += 1
		"emend3":
			GameManager.emdialogcount += 3
		"emend-2":
			GameManager.emdialogcount -= 2
		"emend-1":
			GameManager.emdialogcount -= 1
		"dvend0":
			GameManager.dvdialogcount += 1
		"dvend-1":
			GameManager.dvdialogcount -= 1
		"stend0":
			GameManager.stdialogcount += 1
		"stend-1":
			GameManager.stdialogcount -= 1
		"apend0":
			GameManager.apdialogcount += 1
		"apend-1":
			GameManager.apdialogcount -= 1
		"msend0":
			GameManager.msdialogcount += 1
		"msend-1":
			GameManager.msdialogcount -= 1
		"nsend0":
			GameManager.nsdialogcount += 1
		"nsend-1":
			GameManager.nsdialogcount -= 1
		"tsend0":
			GameManager.tsdialogcount += 1
		"tsend-1":
			GameManager.tsdialogcount -= 1
		"rnend0":
			GameManager.rndialogcount += 1
		"rnend-1":
			GameManager.rndialogcount -= 1
		"rtend0":
			GameManager.rtdialogcount += 1
		"rtend-1":
			GameManager.rtdialogcount -= 1
		"rmend0":
			GameManager.rmdialogcount += 1
		"rmend-1":
			GameManager.rmdialogcount -= 1
		"raend0":
			GameManager.radialogcount += 1
		"raend-1":
			GameManager.radialogcount -= 1
		"godend0":
			GameManager.goddialogcount += 1
		"godend-1":
			GameManager.goddialogcount -= 1
#Nessa função caso uma das strings seja detectada então é executada uma série de instruções para mudança de dialogo e outros.



func _process(delta):
	print(escolha)
	if escolha >=3:
		podeEscolher = false
		# quando podeescolher for maior que ou igual a 3 o codigo para 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		Dialogic.set_variable("esxppoints", pontos)
		#if para aumentar o numero de escolhas, colocar os pontos na variavel global e imprimir os pontos na tela 
		

	
	
func _on_Button_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		pontos +=20
		#aumenta 100 pontos 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem1.color ="2fb438"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass


func _on_Button2_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button2.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem2.color ="e21515"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass 


func _on_Button3_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		pontos +=20
		#aumenta 100 pontos 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button3.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem3.color ="2fb438"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass 


func _on_Button4_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button4.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem4.color ="e21515"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass 


func _on_Button5_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		pontos +=20
		#aumenta 100 pontos 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button5.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem5.color ="2fb438"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass 


func _on_Button6_pressed():
	if podeEscolher:
		escolha +=1
		#colocar que uma escolha ja foi feita 
		$pontos.text="Pontos: " + str(pontos)
		#imprimi os pontos na tela 
		$Control/Button6.disabled = true
		#trava o botão para nao ser clicavel novamente 
		$Control/ColorRect/personagem6.color ="e21515"
		#defini uma cor para o botao (verde se acertou vermelho se errou)
		
	pass 


func _on_Button7_pressed():
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")
	# botão para mudar de cena no final do game 
	
