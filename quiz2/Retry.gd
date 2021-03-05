extends Button


# Declare member variables here. Examples:
var brain_sprites

# Called when the node enters the scene tree for the first time.
func _ready():
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children() # Replace with function body.

func _on_Retry_pressed():
	get_parent().set_visible(false)
	brain_sprites[2].set_visible(false)
	brain_sprites[1].set_visible(true)
	get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz").get_child(2).set_editable(true)
