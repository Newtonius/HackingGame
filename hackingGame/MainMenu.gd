extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_StartButton_pressed():
	get_tree().change_scene("res://PrimaryScreen.tscn")

func _on_OptionsButton_pressed():
	get_tree().change_scene("res://OptionsMenu.tscn")

func _on_ExitButton_pressed():
	get_tree().quit()

func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().quit() 