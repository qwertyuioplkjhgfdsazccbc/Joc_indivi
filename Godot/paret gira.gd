extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	while 1 != 0:
		rotation += 0.05
		yield(get_tree().create_timer(0.0001), "timeout")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
