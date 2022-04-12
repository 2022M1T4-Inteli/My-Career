extends Sprite

func _animation():
	self.visible = true
	yield(get_tree().create_timer(1), "timeout")
	self.visible = false
#A seguinte função anamation, é responsável por informar ao jogador quando ele 
#erra ou acerta uma questão, por isso a sprite do node se torna visivel e ao 
#acerta ou errar a questão, 1 segundo após ele se torna invisivel novamente
