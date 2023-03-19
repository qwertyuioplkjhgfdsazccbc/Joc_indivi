extends KinematicBody2D

var moviment := Vector2.ZERO
var velocitat := 200
var gravetat := Vector2.DOWN * 1800
var salt := Vector2.UP * 600
var posicio_inicial

# Called when the node enters the scene tree for the first time.
func _ready():
	posicio_inicial = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
		moviment += gravetat * delta
		
		moviment.x = Input.get_axis("ves_esquerra", "ves_dreta") * velocitat
		
		moviment = move_and_slide(moviment, Vector2.UP)
		
		if Input.is_action_just_pressed("ves_amunt") and is_on_floor():
			moviment += salt
		
func _on_KinematicBody2D_body_entered(body):
	position = posicio_inicial
