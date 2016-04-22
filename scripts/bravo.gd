
extends Control

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	# Play ovation sound
	get_tree().get_root().get_node("Control/SamplePlayer").play("audience")


func _on_Timer_timeout():
		# Redirect to the home scene
		get_tree().change_scene("res://scenes/home.scn")
