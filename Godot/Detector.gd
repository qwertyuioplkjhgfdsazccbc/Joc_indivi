extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	 # Replace with function body.
	$ColorRect.color = Color(77,77,77)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Detector_body_entered(body):
	$ColorRect.color = Color(0,1,0)
	
	



