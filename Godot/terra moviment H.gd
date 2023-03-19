extends StaticBody2D
var moviment := Vector2.ZERO
var velocitat := 200
var gravetat := Vector2.DOWN * 2000
var salt := Vector2.UP * 600

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	while 0 != 1:
		if  position != Vector2(13, 232) :
			position += Vector2(-1,0)
			yield(get_tree().create_timer(0.00000000000000000000000000000001), "timeout") 
		else:
			while position != Vector2(335, 232):
				position += Vector2(1,0)
				yield(get_tree().create_timer(0.00000000000000000000000000000001), "timeout")
				
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
