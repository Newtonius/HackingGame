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

func _on_GraphicsButton_pressed():
	get_tree().change_scene("res://GraphicsMenu.tscn")

func _on_AudioButton_pressed():
	get_tree().change_scene("res://AudioMenu.tscn")

func _on_BackButton_pressed():
	event.is_action_pressed("ui_cancel")
	