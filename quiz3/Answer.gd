extends Button


var panel_wrong
var panel_correct
var brain_sprites

# Called when the node enters the scene tree for the first time.
func _ready():
	panel_wrong = get_tree().get_root().get_node("/root/Node2D/PanelWrong")
	panel_correct = get_tree().get_root().get_node("/root/Node2D/PanelCorrect")
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children()


func _on_Answer_pressed():
	if Cards.toggledCards[1] and Cards.toggledCards[2]:
		panel_correct.set_visible(true)
		brain_sprites[0].set_visible(false)
		brain_sprites[2].set_visible(true)	
	else:
		panel_wrong.set_visible(true)
		brain_sprites[0].set_visible(false)
		brain_sprites[1].set_visible(true)		
