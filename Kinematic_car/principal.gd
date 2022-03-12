extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var label_tiempo = $CanvasLayer/LabelTime

# Called when the node enters the scene tree for the first time.
func _ready():
	$TimerLose.start(20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label_tiempo.set_text(str(int($TimerLose.time_left)))






func _on_TimerLose_timeout():
		get_tree().reload_current_scene()
