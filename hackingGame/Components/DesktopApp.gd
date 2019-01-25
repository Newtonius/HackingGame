extends Node

onready var AppText = $Label.text

func _ready():
	$Label.max_lines_visible = 1

func InputEventArea2D(viewport, event, shape_idx):
	if event.is_action_pressed("MouseLeftClick"):
		$Label.max_lines_visible = 3
