extends TextureButton

var audio_index
var flag 


# Called when the node enters the scene tree for the first time.
func _ready():
	audio_index = AudioServer.get_bus_index("Audio")
	flag = AudioServer.is_bus_mute(audio_index)
	if flag:
		self.pressed = true
	else:
		self.pressed = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AudioButton_toggled(button_pressed):
	if button_pressed:
		AudioServer.set_bus_mute(audio_index, true)
	else:
		AudioServer.set_bus_mute(audio_index, false)

