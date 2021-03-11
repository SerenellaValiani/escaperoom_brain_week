extends VideoPlayer


var audio_state 


# Called when the node enters the scene tree for the first time.
func _ready():
	audio_state = get_tree().get_root().get_node("/root/Node2D/background/AudioButton").pressed


func _on_VideoPlayer_finished():
	get_children()[0].set_visible(false)
	get_children()[1].set_visible(true)
	get_tree().get_root().get_node("/root/Node2D/background/AudioButton").pressed = audio_state

