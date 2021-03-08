extends Button


# Declare member variables here.
var panel_correct
var brain_sprites


# Called when the node enters the scene tree for the first time.
func _ready():
	panel_correct = get_tree().get_root().get_node("/root/Node2D/PanelCorrect")
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children()

func _on_Button4_pressed():
	for node in get_parent().get_children():
		node.disabled = true
	panel_correct.set_visible(true)
	brain_sprites[1].set_visible(false)
	brain_sprites[3].set_visible(true)
	
