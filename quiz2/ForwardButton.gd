extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var brain_sprites


# Called when the node enters the scene tree for the first time.
func _ready():
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children() # Replace with function body. # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ForwardButton_pressed():
	get_parent().set_visible(false) # Replace with function body.
	brain_sprites[0].set_visible(false)
	brain_sprites[1].set_visible(true)
	get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz").get_child(2).set_editable(true)
