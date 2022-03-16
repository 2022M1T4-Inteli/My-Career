extends Node2D

var escolha = 0
var podeEscolher = true
var pontos = 0 


func _ready():
	$pontos.text="Pontos: " + str(pontos)
	
	pass 

func _process(delta):
	print(escolha)
	if escolha >=3:
		podeEscolher=false
		$pontos.text="Pontos: " + str(pontos)
		
	pass
	
	
func _on_Button_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem1.color ="2fb438"
		
	pass


func _on_Button2_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem2.color ="e21515"
		
	pass 


func _on_Button3_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem3.color ="2fb438"
		
	pass 


func _on_Button4_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem4.color ="e21515"
		
	pass 


func _on_Button5_pressed():
	if podeEscolher:
		escolha +=1
		pontos +=100
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem5.color ="2fb438"
		
	pass 


func _on_Button6_pressed():
	if podeEscolher:
		escolha +=1
		$pontos.text="Pontos: " + str(pontos)
		$Control/ColorRect/personagem6.color ="e21515"
		
	pass 
