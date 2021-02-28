extends Button


# Declare member variables here. Examples:
var panel_wrong
var brain_sprites


# Called when the node enters the scene tree for the first time.
func _ready():
	panel_wrong = get_tree().get_root().get_node("/root/Node2D/PanelWrong")
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children()

func _on_Button1_pressed():
	for node in get_parent().get_children():
		node.disabled = true
	panel_wrong.set_visible(true)
	brain_sprites[0].set_visible(false)
	brain_sprites[1].set_visible(true)
	
