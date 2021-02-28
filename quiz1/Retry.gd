extends Button

var options
var brain_sprites

func _ready():
	options = get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz/Options").get_children()
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children()
	

func _on_Retry_pressed():
	get_parent().set_visible(false)
	for node in options:
		node.disabled = false
	brain_sprites[1].set_visible(false)
	brain_sprites[0].set_visible(true)
