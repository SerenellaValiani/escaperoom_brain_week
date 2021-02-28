extends Button


# Declare member variables here. Examples:
var panel_correct


# Called when the node enters the scene tree for the first time.
func _ready():
	panel_correct = get_tree().get_root().get_node("/root/Node2D/PanelCorrect")

func _on_Button4_pressed():
	for node in get_parent().get_children():
		node.disabled = true
	panel_correct.set_visible(true)
	
