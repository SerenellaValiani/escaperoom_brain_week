extends Node

# Called when the node enters the scene tree for the first time.
var cards
var answer


# Called when the node enters the scene tree for the first time.
func _ready():
	cards = self.get_children()
	answer = get_tree().get_root().get_node("/root/Node2D/background/PanelQuiz/Answer")
	# Replace with function body.

func update(i):
	if cards[i].is_toggle_mode():
		Cards.toggledCards[i] = not Cards.toggledCards[i] 
	if Cards.check_toggled() == 2:
		for n_card in range(len(Cards.toggledCards)):
			if not Cards.toggledCards[n_card]:
				cards[n_card].toggle_mode = false
		answer.disabled = false
	else:
		for n_card in range(len(Cards.toggledCards)):
			if not cards[n_card].toggle_mode:
				cards[n_card].toggle_mode = true
		answer.disabled = true
	print(Cards.toggledCards, Cards.check_toggled())
	

func _on_Card1_pressed():
	update(0)

func _on_Card2_pressed():
	update(1)

func _on_Card3_pressed():
	update(2)

func _on_Card4_pressed():
	update(3)

