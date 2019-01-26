extends Node

onready var m_AppText = $Label.text
var m_IsPressed = false

func _ready():
	$Label.max_lines_visible = 1
	$Area2D/Hover.visible = false

func InputEventArea2D(viewport, event, shape_idx):
	get_tree().set_input_as_handled()
	if event.is_action_pressed("MouseLeftClick"):
		$Label.max_lines_visible = 3
		m_IsPressed = true
		$Area2D/Hover.visible = true


func MouseEnterArea2d():
	if m_IsPressed != true:
		$Area2D/Hover.visible = true


func MouseExitArea2D():
	if m_IsPressed != true:
		$Area2D/Hover.visible = false

func IsPressed():
	return m_IsPressed

func SetIsPressed(value):
	m_IsPressed = value
	$Area2D/Hover.visible = false