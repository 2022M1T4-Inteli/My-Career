extends AudioStreamPlayer

onready var music = $BackgroundMusic4
onready var music2 = $BackgroundMusic3
onready var iconUnmuted =  $SoundUnmuted
onready var iconMuted = $SoundMuted

func _ready():
	if GameManager.goddialogcount > 40 and GameManager.goddialogcount < 50:
		music.play()
		music2.stop()

func _on_Mute_pressed():
	if playing == true:
		music.volume_db = -1000.0
		playing = false
		iconUnmuted.hide()
		iconMuted.show()
		
	else:
		music.volume_db = 0.0
		playing = true
		iconUnmuted.show()
		iconMuted.hide()
	pass # Replace with function body.
