extends Node2D

var escolha = 0
#variavel para limitar as escolhas do jogador 3
var podeEscolher = true
# variavel para o escolher
var pontos = 0 
# variavel para a contagem de pontos



func _ready():
		GameManager.interiorandar = false
		if  GameManager.iniciominigamems == true: #Verifica se outro diálogo ja esta em cena
			GameManager.iniciominigamems = false
			var dialog = Dialogic.start(str("RecrutadoraMicrosoft-",GameManager.rmdialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
		else:
			$pontos.text="Pontos: " + str(pontos)


func dialog_listener(string):
	match string:
		"rmend0":
			GameManager.rmdialogcount += 1


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
	
