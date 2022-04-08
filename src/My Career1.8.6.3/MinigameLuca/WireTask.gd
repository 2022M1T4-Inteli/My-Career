extends Node2D


var pressed = false
var score = 0

func _ready():
	pass
	
func _update_score():
	score += 15
	$ScoreLabel.text = "Score: " + String(score)
#faz o update do score

func _update_score2():
	score -= 15
	$ScoreLabel.text = "Score: " + String(score)
#faz o update do score

func _on_ButtonAcabar_pressed():
	_update_score()
	yield(get_tree().create_timer(5.0),"timeout")
	get_tree().change_scene("res://Scenes/1andarTesla.tscn") 
#função que faz visivel o score na label 






