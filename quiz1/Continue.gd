extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var brain_sprites


# Called when the node enters the scene tree for the first time.
func _ready():
	brain_sprites = get_tree().get_root().get_node("/root/Node2D/background/BrainSprites").get_children() # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Continue_pressed():
	get_parent().set_visible(false)
	get_tree().get_root().get_node("/root/Node2D/background/LoSapeviChe").set_visible(true)
	brain_sprites[2].set_visible(false)
	brain_sprites[3].set_visible(false)
	brain_sprites[0].set_visible(true)


func _on_Retry_pressed():
	pass # Replace with function body.
