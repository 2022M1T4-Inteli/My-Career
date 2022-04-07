extends Sprite

func _ready():
	pass 

func _process(delta):
	for body in $Area2D.get_overlapping_bodies():
		pass
#checa se a sprite estar colidindo

func _on_Area2D_area_shape_entered(area_rid, area, area_shape_index, local_shape_index):
	if area.is_in_group("roxo"):
		$WireTask._update_score()
#adciona 15 a variavel global score se estiver colidindo com a sprite do grupo correto

func _on_Area2D_area_shape_exited(area_rid, area, area_shape_index, local_shape_index):
	$WireTask._update_score2()
#subtrai 15 a variavel global score se estiver colidindo com a sprite do grupo correto
