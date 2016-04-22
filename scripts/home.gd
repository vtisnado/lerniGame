
extends Control

func _ready():
	pass

# Handle play button pressed event
func _on_play_pressed():
	get_tree().get_root().get_node("Control/SamplePlayer").play("tab_play")
	get_tree().change_scene("res://scenes/puzzle1.scn")