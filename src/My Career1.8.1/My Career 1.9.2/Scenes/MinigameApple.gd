extends Node2D


var pontos = 0
#variavel para os pontos
var Funcao1 
var Funcao2
var Funcao3
var Funcao4
#variavel para cada blocos de função de escrever 

var variavel1
var variavel2
var variavel3 
var variavel4
# variavel para o cada blocos de variavel escrever


var fun1 = false
var fun2 = false
var fun3 = false
var fun4 = false
#variavel para ver ser digitou a função certa 

var var1 = false
var var2 = false
var var3 = false
var var4 = false
#variavel para ver ser digitou a varivavel certa certa 



func _ready():
		GameManager.interiorandar = false
		if GameManager.iniciominigameap == true: #Verifica se outro diálogo ja esta em cena
			GameManager.iniciominigameap = false
			var dialog = Dialogic.start(str("RecrutadoraApple-",GameManager.radialogcount)) #Inicia o diálogo da timeline-1, que foi pré-definida na ferramente "Dialogic"
			dialog.connect("timeline_end", self, "unpause") #Faz com que ao fim do timeline, o jogo despause
			dialog.connect("dialogic_signal", self, "dialog_listener") #Faz com que o sinal de dialogo receba um valor e assim execute uma ação
			# Declarando variaveis de pontuação dos bachalerados tanto de experiência quanto de quiz
			add_child(dialog) 
		else:
			$LabelPontos.text="Pontos: " + str(pontos)


func dialog_listener(string):
	match string:
		"raend0":
			GameManager.radialogcount += 1


func _process(delta):
	Funcao1 = str($LineEditFun.text)
	#definir funçao1 como entrada de texto
	if fun1 == false:
		if Funcao1 == "Aumentar" or Funcao1 == "aumentar":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			fun1 = true
			#para o if
			
	Funcao2 = str($LineEditFun2.text)
	#definir funçao2 como entrada de texto
	if fun2 == false:
		if Funcao2 == "Aumentar" or Funcao2 == "aumentar" :
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			fun2 = true 
			#para o if
			
		
	Funcao3 = str($LineEditFun3.text)
	#definir funçao3 como entrada de texto
	if fun3 == false:
		if Funcao3 == "diminuir" or Funcao3 == "Diminuir":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			fun3 = true
			#para o if
		
	Funcao4 = str($LineEditFun4.text)
	if fun4 == false:
		#definir funçao4 como entrada de texto
		if Funcao4 == "Aumentar" or Funcao4 == "aumentar":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			fun4 = true
			#para o if
		
	variavel1 = str($LineEditVar.text)
	#definir variavel1 como entrada de texto
	if var1 == false:
		if variavel1  == "Promocao" or variavel1 == "promocao" or variavel1 == "promoção" or variavel1 == "Promoção" or variavel1 == "facilidade" or variavel1 == "Facilidade" or variavel1 =="restaurante" or variavel1 =="Restaurante":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			var1 = true
			#para o if
		
		
	variavel2 = str($LineEditVar2.text)
	if var2 == false:
		#definir variavel2 como entrada de texto
		if variavel2  == "Promocao" or variavel2 == "promocao" or variavel2 == "promoção" or variavel2 == "Promoção" or variavel2 == "facilidade" or variavel2 == "Facilidade" or variavel2 =="restaurante" or variavel2 =="Restaurante":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			var2 = true
			#para o if
			
	variavel3 = str($LineEditVar3.text)
	#definir variavel3 como entrada de texto
	if var3 == false:
		if variavel3  == "erros" or variavel3 =="Erros":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			var3 = true
			#para o if
		
	variavel4 = str($LineEditVar4.text)
	#definir variavel4 como entrada de texto
	if var4 == false:
		if variavel4  == "Promocao" or variavel4 == "promocao" or variavel4 == "promoção" or variavel4 == "Promoção" or variavel4 == "facilidade" or variavel4 == "Facilidade" or variavel4 =="restaurante" or variavel4  =="Restaurante":
			#defini as palavars aceitas
			pontos +=7.5
			#somar os pontos caso a palavra estiver certa
			$LabelPontos.text = "Pontos: " + str(pontos)
			#imprimi os pontos
			var4 = true
			#para o if

	Dialogic.set_variable("esxppoints", pontos)
	#manda os pontos para variavel global
pass


func _on_Buttonconcluir_pressed():
	get_tree().change_scene("res://Scenes/1andarApple.tscn")
	#muda de de cena 
pass 

