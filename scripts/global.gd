extends Node

# Set default value for dragged items
var dragged_item = null

func _ready():
	# Set default values
	Globals.set("goal", 0)
	Globals.set("points", 0)

# Validate if the car match with the silhouette
func validate_item(item, container):
	if (item==container):
		return true
	else:
		return false

# Check if level is complete
func level_acomplished(points, goal, scene):
	if (points >= goal):
		get_tree().change_scene("res://scenes/" + scene + ".scn")