extends TextureFrame

# Set default value for this item
var carro = 1

func _ready():
	pass

# checks if car silhouette can recive the dropped red car
func can_drop_data(pos, data):
	print("Item in drag area")
	return true

# Handle drag event
func drop_data(pos, data):
	var is_valid = get_node("/root/global").validate_item(carro, Globals.get("dragged_item"))
	print(str("Item dragged: ", is_valid))
	
	if (is_valid == true):
		# Set icon to show on drag the red car
		var icon = load("res://graphics/auto_amarillo_1.png")
		self.set_texture(icon)
		get_tree().get_root().get_node("Control/SamplePlayer").play("dragged")
		
		# Remove the red car once is dragget to the car silhouette
		var old = get_node("/root/Control/yellow_car")
		old.free()
		
		var points = Globals.get("points")
		points = points + 1
		Globals.set("points", points)
		get_node("/root/global").level_acomplished(points, 2, "bravo")
		
		# Print some position data to the debugger
		printt(pos, data)
