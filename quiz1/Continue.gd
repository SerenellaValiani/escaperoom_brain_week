extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Continue_pressed():
	get_parent().set_visible(false)
	get_tree().get_root().get_node("/root/Node2D/background/LoSapeviChe").set_visible(true)


func _on_Retry_pressed():
	pass # Replace with function body.
