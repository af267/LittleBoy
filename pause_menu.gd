extends CanvasLayer

#@export var game_manager : GameManager

# Called when the node enters the scene tree for the first time.
func _ready():
	self.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("pause_menu"):
		if get_tree().paused == false:
			get_tree().paused = true
			self.show()
		else:
			get_tree().paused = false
			self.hide()
		
func _on_menu_pressed():
	#game_manager.game_paused = false
	get_tree().paused = false
	get_tree().change_scene_to_file("res://assets/node_2d.tscn")
func _on_resume_pressed():
	get_tree().paused = false
	self.hide()
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)
