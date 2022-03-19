extends Area2D

var firstTime = 0

func _ElevadorEnable():
	$CollisionShape2D.disabled = false
#Função que ativa o colisor do elevador
func _on_Area2DApple_body_entered(body):
	if firstTime == 0:
		$CollisionShape2D.disabled = true
		firstTime += 1
	else: 
		$CollisionShape2D.disabled = false
#Proibe a entrada do jogador na cena respectiva se for a primeira vez
