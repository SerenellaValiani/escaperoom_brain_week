extends LineEdit


var CORR_ANSWER = ["5", "cinque"]
var panel_wrong
var panel_correct
var brain_sprites
var allowed_characters = "[0-9]"


# Called when the node enters the scene tree for the first time.
func _ready():
	panel_wrong = get_tree().get_root().get_node("/root/Node2D/PanelWrong")
	panel_correct = get_tree().get_root().get_node("/root/Node2D/PanelCorrect")
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children()

func check_text(new_text):
	var old_caret_position = self.caret_position
	var word = ''
	var regex = RegEx.new()
	regex.compile(allowed_characters)
	for valid_character in regex.search_all(new_text):
		word += valid_character.get_string()
	self.set_text(word)
	caret_position = old_caret_position


func _on_Answer_text_entered(answer):
	answer = answer.to_lower().replace(" ","")
	if answer in CORR_ANSWER:
		panel_correct.set_visible(true)
		brain_sprites[1].set_visible(false)
		brain_sprites[3].set_visible(true)		
	else:
		panel_wrong.set_visible(true)
		brain_sprites[1].set_visible(false)
		brain_sprites[2].set_visible(true)	

func _on_AnswerLine_text_changed(new_text):
	check_text(new_text) # Replace with function body.
