extends Button


# Declare member variables here. Examples:
#var answer_line


# Called when the node enters the scene tree for the first time.
func _ready():
	#answer_line = get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz/AnswerLine")
	pass

func _on_Continue_pressed():
	get_parent().set_visible(false)
	get_tree().get_root().get_node("/root/Node2D/background/LoSapeviChe").set_visible(true)

