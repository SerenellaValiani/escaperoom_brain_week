extends Button


var stream_pos


# Called when the node enters the scene tree for the first time.
func _ready():
	stream_pos = get_parent().get_stream_position() 

func mute_music():
	var audio_index = AudioServer.get_bus_index("Audio")
	AudioServer.set_bus_mute(audio_index, true)
	get_tree().get_root().get_node("/root/Node2D/background/AudioButton").pressed = true
	
func _on_Play_pressed():
	mute_music()
	if get_parent().paused:
		get_parent().paused = false
		get_parent().set_stream_position(stream_pos)
		get_tree().get_root().get_node("/root/Node2D/background/LoSapeviChe").get_children()[0].set_visible(true)
		get_children()[0].set_visible(false)
		get_children()[1].set_visible(true)
	else:
		stream_pos = get_parent().get_stream_position()
		get_parent().paused = true
		get_children()[1].set_visible(false)
		get_children()[0].set_visible(true)
	

		
		
		
		
