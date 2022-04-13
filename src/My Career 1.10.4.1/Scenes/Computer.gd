extends Node2D

var score
var PONTOS_MAX = 120

func _ready():
	GameManager.libraryHelp = false
	get_tree().paused = false

func _process(delta):

	$LabelQZSI.text = str(Dialogic.get_variable("siqzpoints"))
	$LabelEXPSI.text = str(Dialogic.get_variable("sixppoints"))
	var qzsi = float(Dialogic.get_variable("siqzpoints"))
	var expsi = float(Dialogic.get_variable("sixppoints"))
	var divisaosi
	divisaosi = (qzsi + expsi) / PONTOS_MAX * 100
	$LabelGeralSI.text = str(stepify(divisaosi,0.01)) + "%"

	$LabelQZCC.text = str(Dialogic.get_variable("ccqzpoints"))
	$LabelEXPCC.text = str(Dialogic.get_variable("ccxppoints"))
	var qzcc = float(Dialogic.get_variable("ccqzpoints"))
	var expcc = float(Dialogic.get_variable("ccxppoints"))
	var divisaocc
	divisaocc = (qzcc + expcc) / PONTOS_MAX * 100
	$LabelGeralCC.text = str(stepify(divisaocc,0.01)) + "%"
	
	$LabelQZEC.text = str(Dialogic.get_variable("ecqzpoints"))
	$LabelEXPEC.text = str(Dialogic.get_variable("ecxppoints"))
	var qzec = float(Dialogic.get_variable("ecqzpoints"))
	var expec = float(Dialogic.get_variable("ecxppoints"))
	var divisaoec
	divisaoec = (qzec + expec) / PONTOS_MAX * 100
	$LabelGeralEC.text = str(stepify(divisaoec,0.01)) + "%"
	
	$LabelQZES.text = str(Dialogic.get_variable("esqzpoints"))
	$LabelEXPES.text = str(Dialogic.get_variable("esxppoints"))
	var  qzes = float(Dialogic.get_variable("esqzpoints"))
	var  expes = float(Dialogic.get_variable("esxppoints"))
	var divisaoes
	divisaoes = (qzes + expes) / PONTOS_MAX * 100
	$LabelGeralES.text = str(stepify(divisaoes,0.01)) + "%"
	

func _on_ButtonSair_pressed():
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
