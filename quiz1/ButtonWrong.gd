extends Button


# Declare member variables here. Examples:
var panel_wrong


# Called when the node enters the scene tree for the first time.
func _ready():
	panel_wrong = get_tree().get_root().get_node("/root/Node2D/PanelWrong")

func _on_Button1_pressed():
	for node in get_parent().get_children():
		node.disabled = true
	panel_wrong.set_visible(true)
