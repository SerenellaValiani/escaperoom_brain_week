extends Button


# Declare member variables here. Examples:
var brain_sprites
var options

# Called when the node enters the scene tree for the first time.
func _ready():
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children() # Replace with function body.
	options = get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz/Options").get_children()


func _on_Retry_pressed():
	for option in options:
		option.disabled = false
	get_parent().set_visible(false)
	brain_sprites[2].set_visible(false)
	brain_sprites[1].set_visible(true)


