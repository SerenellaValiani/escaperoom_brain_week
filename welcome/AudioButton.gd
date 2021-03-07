extends Button


# Declare member variables here. Examples:
# var a = 2
var audio_index


# Called when the node enters the scene tree for the first time.
func _ready():
	audio_index = AudioServer.get_bus_index("Master")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	pass # Replace with function body.


func _on_AudioButton_pressed():
	var flag = AudioServer.is_bus_mute(audio_index)
	if flag:
		AudioServer.set_bus_mute(audio_index, false)
		self.get_children()[1].set_visible(false)
		self.get_children()[0].set_visible(true)
	else:
		AudioServer.set_bus_mute(audio_index, true)
		self.get_children()[0].set_visible(false)
		self.get_children()[1].set_visible(true)
		
