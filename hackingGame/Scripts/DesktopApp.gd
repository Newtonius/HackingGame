extends Node

var m_IsPressed = false

func _ready():
	$Hover.visible = false

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

func InputPressed(event):
	if event.is_action_pressed("MouseLeftClick"):
		if event.doubleclick:
			$Window.popup()
		var apps = get_parent().get_children()
		for app in apps:
			if app != self:
				app.SetIsPressed(false)
		SetIsPressed(true)
