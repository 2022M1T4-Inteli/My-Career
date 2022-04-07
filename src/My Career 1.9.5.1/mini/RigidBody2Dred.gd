extends RigidBody2D

signal clicked

var held = false

func _ready():
	add_to_group("vermelho")


func _on_RigidBody2Dred_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.pressed:
		emit_signal("clicked", self)
	

func _physics_process(delta):
	if held:
		global_transform.origin = get_global_mouse_position()


func pickup():
	if held == false:
		held = true


func drop():
	if held:
		held = false



