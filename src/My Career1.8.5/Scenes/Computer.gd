extends Node2D

var pontos
var PONTOS_MAX = 315

func _process(delta):

	$LabelQZSI.text = str(Dialogic.get_variable("siqzpoints"))
	$LabelEXPSI.text = str(Dialogic.get_variable("siexppoints"))
	var qzsi = float("siqzpoints")
	var expsi = float("siexppoints")
	var divisaosi = (qzsi + expsi) / PONTOS_MAX * 100
	$LabelGeralSI.text = str(divisaosi,001 ) + "%"

	$LabelQZCC.text = str(Dialogic.get_variable("ccqzpoints"))
	$LabelEXPCC.text = str(Dialogic.get_variable("ccexppoints"))
	var qzcc = float("ccqzpoints")
	var expcc = float("ccexppoints")
	var divisaocc = (qzcc + expcc) / PONTOS_MAX * 100
	$LabelGeralCC.text = str(divisaocc,001) + "%"
	
	$LabelQZEC.text = str(Dialogic.get_variable("ecqzpoints"))
	$LabelEXPEC.text = str(Dialogic.get_variable("ecexppoints"))
	var qzec = float("ecqzpoints")
	var expec = float("ecexppoints")
	var divisaoec = int(qzec + expec) / PONTOS_MAX * 100
	$LabelGeralEC.text = str(divisaoec,001) + "%"
	
	$LabelQZES.text = str(Dialogic.get_variable("esqzpoints"))
	$LabelEXPES.text = str(Dialogic.get_variable("esexppoints"))
	var  qzes = float("esqzpoints")
	var  expes = float("esexppoints")
	var divisaoes = (qzes + expes) / PONTOS_MAX * 100
	$LabelGeralES.text = str(divisaoes,001) + "%"

func _on_ButtonSair_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
	pass # Replace with function body.
