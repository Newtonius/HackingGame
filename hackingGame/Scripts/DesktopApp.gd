extends Node

onready var m_AppText = $Label.text
var m_IsPressed = false

func _ready():
	$Label.max_lines_visible = 1
	$Hover.visible = false

func ButtonPressed(event):
	if event.is_action_pressed("MouseLeftClick"):
		if event.doubleclick:
			print("double click")
		var apps = get_parent().get_children()
		for app in apps:
			if app != self:
				app.SetIsPressed(false)
		SetIsPressed(true)

func MouseEnter():
	if m_IsPressed != true:
		$Hover.visible = true


func MouseExit():
	if m_IsPressed != true:
		$Hover.visible = false

func IsPressed():
	return m_IsPressed

func SetIsPressed(value):
	m_IsPressed = value
	$Hover.visible = value
	if value == true:
		$Label.max_lines_visible = 3

func InputPressed(event):
	if event.is_action_pressed("MouseLeftClick"):
		if event.doubleclick:
			print("double click")
		var apps = get_parent().get_children()
		for app in apps:
			if app != self:
				app.SetIsPressed(false)
		SetIsPressed(true)
