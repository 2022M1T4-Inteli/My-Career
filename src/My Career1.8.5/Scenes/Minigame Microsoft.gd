extends Node2D

var escolha = 0
var podeEscolher = true
var pontos = 0 



func _ready():
		GameManager.interiorandar = false
		if get_node_or_null('DialogNode') == null and GameManager.iniciominigamems == true: #Verifica se outro diálogo ja esta em cena
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
		$pontos.text="Pontos: " + str(pontos)
		Dialogic.set_variable("esxppoints", pontos)
		

	
	
func _on_Button_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button.disabled = true
		$Control/ColorRect/personagem1.color ="2fb438"
		
	pass


func _on_Button2_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button2.disabled = true
		$Control/ColorRect/personagem2.color ="e21515"
		
	pass 


func _on_Button3_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button3.disabled = true
		$Control/ColorRect/personagem3.color ="2fb438"
		
	pass 


func _on_Button4_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button4.disabled = true
		$Control/ColorRect/personagem4.color ="e21515"
		
	pass 


func _on_Button5_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button5.disabled = true
		$Control/ColorRect/personagem5.color ="2fb438"
		
	pass 


func _on_Button6_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/Button6.disabled = true
		$Control/ColorRect/personagem6.color ="e21515"
		
	pass 


func _on_Button7_pressed():
	get_tree().change_scene("res://Scenes/1andarMicrosoft.tscn")
	
