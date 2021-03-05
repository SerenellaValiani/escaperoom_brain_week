extends Node

var toggledCards


# Called when the node enters the scene tree for the first time.
func _ready():
	toggledCards = [false, false, false, false]

func check_toggled():
	var n = 0
	for i in range(len(toggledCards)):
		if toggledCards[i]:
			n += 1
	return n

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
