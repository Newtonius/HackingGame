extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _unhandled_input(event):
	if event.is_action_pressed("MouseLeftClick"):
		var apps = get_children()
		for app in apps:
			app.SetIsPressed(false)