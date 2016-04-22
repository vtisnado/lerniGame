
extends TextureFrame

func _ready():
	set_process(true)


func get_drag_data(pos):
	Globals.set("dragged_item",1)
	
	# Set icon to show once the red car is dragged
	var icon = preload("res://scenes/drag2.scn").instance()
	set_drag_preview( icon )
	
	# Print message in debugger to check if everything is ok
	return "Drag stop"