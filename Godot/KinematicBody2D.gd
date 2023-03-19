extends Area2D
var moviment := Vector2.ZERO
var velocitat := 200
var gravetat := Vector2.DOWN * 2000
var salt := Vector2.UP * 600


func _ready():
	while 0 != 1:
		if  position != Vector2(346, 372) :
			position += Vector2(-2,0)
			yield(get_tree().create_timer(0.01), "timeout") 
		else:
			while position != Vector2(1000, 372):
				position += Vector2(2,0)
				yield(get_tree().create_timer(0.01), "timeout")
				
	
