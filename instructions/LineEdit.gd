extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var player_name
var allowed_characters = "[A-Za-z]"

	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_LineEdit_text_entered(text):
	player_name = text# Replace with function body.
	get_tree().get_root().get_node("/root/Node2D/background/Comic2").get_child(0).set_text("Ciao " + player_name + "!")
	get_tree().get_root().get_node("/root/Node2D/background/Comic2").set_visible(true)

func check_text(new_text):
	var old_caret_position = self.caret_position
	var word = ''
	var regex = RegEx.new()
	regex.compile(allowed_characters)
	for valid_character in regex.search_all(new_text):
		word += valid_character.get_string()
	self.set_text(word)
	caret_position = old_caret_position
	

func _on_LineEdit_text_changed(new_text):
	check_text(new_text)
	player_name = new_text # Replace with function body
	get_tree().get_root().get_node("/root/Node2D/background/Comic2").get_child(0).set_text("Ciao " + player_name + "!")
	#print(new_text)
