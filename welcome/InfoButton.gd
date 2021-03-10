extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_InfoButton_pressed():
	# TODO remove this line and replace with "mute" button
	#$ButtonSound.play()
	get_tree().change_scene("res://info/info.tscn")
