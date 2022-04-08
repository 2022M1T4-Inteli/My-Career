extends Sprite

func _ready():
	pass

func _process(delta):
	if ScoreLabel.score == 4:
		visible = true
#faz visil do robo ligado depois que a variavel global fica igual a 4
