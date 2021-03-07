extends Button


var stream_pos


# Called when the node enters the scene tree for the first time.
func _ready():
	stream_pos = get_parent().get_stream_position() # Replace with function body.


func _on_Play_pressed():
	if get_parent().paused:
		get_parent().paused = false
		get_parent().set_stream_position(stream_pos)
		get_children()[0].set_visible(false)
		get_children()[1].set_visible(true)
	else:
		stream_pos = get_parent().get_stream_position()
		get_parent().paused = true
		get_children()[1].set_visible(false)
		get_children()[0].set_visible(true)
		print(get_parent().is_playing())
	

		
		
		
		
