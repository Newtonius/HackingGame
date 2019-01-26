extends Node

export (NodePath) var display_path
export (NodePath) var res_path
onready var displayDropdown = get_node(display_path)
onready var resDropdown = get_node(res_path)

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	m_addItems()
	pass

func m_addItems():
	displayDropdown.add_item("Fullscreen")
	displayDropdown.add_item("Windowed")
	displayDropdown.add_item("Borderless")
	
	var res_array = ["1280x720","1366x768","1600x900","1920x1080","2560x1440","3840x2160"]
	for item in res_array:
		resDropdown.add_item(item)
	
func _on_BackButton_pressed():
	get_tree().change_scene("res://OptionsMenu.tscn")
	
func _unhandled_input(event):
	if event is InputEventKey:
		if event.pressed and event.scancode == KEY_ESCAPE:
			get_tree().change_scene("res://OptionsMenu.tscn")

func _on_DisplayOptions_item_selected(ID):
	print(str(displayDropdown.get_item_text(ID)))

func _on_ResolutionOptions_item_selected(ID):
	pass # replace with function body

func _on_VSyncOption_toggled(button_pressed):
	pass # replace with function body
