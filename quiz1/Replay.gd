extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func mute_music():
	var audio_index = AudioServer.get_bus_index("Audio")
	AudioServer.set_bus_mute(audio_index, true)
	get_tree().get_root().get_node("/root/Node2D/background/AudioButton").pressed = true


func _on_Replay_pressed():
	mute_music()
	get_parent().play()
	get_parent().get_children()[0].set_visible(true)
	self.set_visible(false)
	
