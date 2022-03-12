extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var label_tiempo = $CanvasLayer/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	label_tiempo.set_text(str($Timer.time_left))


func _on_Timer_timeout():
	print("you lose!!!!!")
	get_tree().reload_current_scene()
