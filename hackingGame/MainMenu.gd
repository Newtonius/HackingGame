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

func _input(event):
	event.is_action_pressed("ui_cancel") 