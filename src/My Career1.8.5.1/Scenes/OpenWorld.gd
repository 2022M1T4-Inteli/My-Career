extends Node2D

func _ready(): 

	if GameManager.tutorial == false:
		yield(get_tree().create_timer(0.5), "timeout")
		get_node("Player").get_node("Camera2D")._on_Button_pressed()
		GameManager.tutorial = true
	else:
		get_node("Player").global_position = GameManager.positionopenworld
		pass
#Verifica caso o jogador não tenha feito o turorial então o tutorial é executado pela primeira vez,
#caso contrario a posição do jogador será a ultima que ele passou na cena


func _on_ElonMusgo_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/ElonMusgo.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_Tesla_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/TerreoTesla.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio do mentor Elon Musgo.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_SteveTrabalho_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/SteveTrabalho.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior da casa do Steve Trabalhos.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_DorothyVan_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/DorothyVan.tscn")
	# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior da casa da Dorothy Van.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_BillPortas_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/BillPortas.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior da casa do Bill Portas.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena


func _on_Apple_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/TerreoApple.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio da Apple.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_Microsoft_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/TerreoMicrosoft.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio da Microsoft.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_Nasa_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/TerreoNasa.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior do prédio da Nasa.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena

func _on_Biblioteca_body_entered(body):
	GameManager.positionopenworld = get_node("Player").global_position + Vector2(0,50)
	GameManager.interiorterreo = true
	get_tree().change_scene("res://Scenes/Biblioteca.tscn")
# Quando a Area2D detecta o valor de "body" então a cena é mudada para o interior da Biblioteca.
# em conjunto a posição do jogador na cena é armazenada para que ele volte nesta quando voltar na cena
