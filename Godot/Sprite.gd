extends KinematicBody2D

var velocitat := 500


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direccio := Vector2.ZERO
	if Input.is_action_pressed('ves_dreta'):
		direccio += Vector2.RIGHT
	if Input.is_action_pressed('ves_esquerra'):
		direccio += Vector2.LEFT
	if Input.is_action_pressed('ves_abaix'):
		direccio += Vector2.DOWN
	if Input.is_action_pressed('ves_amunt'):
		direccio += Vector2.UP
		
	if direccio.length() > 0:
		move_and_slide( direccio.normalized() * velocitat)
