extends Node2D


var pontos = 0
var Funcao1 
var Funcao2
var Funcao3
var Funcao4

var variavel1
var variavel2
var variavel3 
var variavel4

var fun1 = false
var fun2 = false
var fun3 = false
var fun4 = false

var var1 = false
var var2 = false
var var3 = false
var var4 = false


func _ready():
		GameManager.interiorandar = false
		if get_node_or_null('DialogNode') == null and GameManager.iniciominigameap == true: #Verifica se outro diálogo ja esta em cena
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
	if fun1 == false:
		if Funcao1 == "Aumentar" or Funcao1 == "aumentar":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			fun1 = true
			
	Funcao2 = str($LineEditFun2.text)
	if fun2 == false:
		if Funcao2 == "Aumentar" or Funcao2 == "aumentar" :
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			fun2 = true 
			
		
	Funcao3 = str($LineEditFun3.text)
	if fun3 == false:
		if Funcao3 == "diminuir" or Funcao3 == "Diminuir":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			fun3 = true
		
	Funcao4 = str($LineEditFun4.text)
	if fun4 == false:
		if Funcao4 == "Aumentar" or Funcao4 == "aumentar":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			fun4 = true
		
	variavel1 = str($LineEditVar.text)
	if var1 == false:
		if variavel1  == "Promocao" or variavel1 == "promocao" or variavel1 == "promoção" or variavel1 == "Promoção" or variavel1 == "facilidade" or variavel1 == "Facilidade" or variavel1 =="restaurante" or variavel1 =="Restaurante":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			var1 = true
		
		
	variavel2 = str($LineEditVar2.text)
	if var2 == false:
		if variavel2  == "Promocao" or variavel2 == "promocao" or variavel2 == "promoção" or variavel2 == "Promoção" or variavel2 == "facilidade" or variavel2 == "Facilidade" or variavel2 =="restaurante" or variavel2 =="Restaurante":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			var2 = true
			
	variavel3 = str($LineEditVar3.text)
	if var3 == false:
		if variavel3  == "erros" or variavel3 =="Erros":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			var3 = true
		
	variavel4 = str($LineEditVar4.text)
	if var4 == false:
		if variavel4  == "Promocao" or variavel4 == "promocao" or variavel4 == "promoção" or variavel4 == "Promoção" or variavel4 == "facilidade" or variavel4 == "Facilidade" or variavel4 =="restaurante" or variavel4  =="Restaurante":
			pontos +=50
			$LabelPontos.text = "Pontos: " + str(pontos)
			var4 = true

	Dialogic.set_variable("esxppoints", pontos)
pass


func _on_Buttonconcluir_pressed():
	get_tree().change_scene("res://Scenes/1andarApple.tscn")
pass 

