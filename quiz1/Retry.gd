extends Button

var options

func _ready():
	options = get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz/Options").get_children()


func _on_Retry_pressed():
	get_parent().set_visible(false)
	for node in options:
		node.disabled = false
