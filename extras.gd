extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), 50)
	$CanvasLayer.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_monkey_pressed():
	$CanvasLayer.show()
	get_tree().paused = true
	$CanvasLayer/Jumpscare1.play()
	await get_tree().create_timer(1.8).timeout
	get_tree().paused = false
	get_tree().reload_current_scene.call_deferred()


func _on_spider_pressed():
	$CanvasLayer.show()
	get_tree().paused = true
	$CanvasLayer/Jumpscare2.play()
	await get_tree().create_timer(1.8).timeout
	get_tree().paused = false
	get_tree().reload_current_scene.call_deferred()


func _on_stinger_pressed():
	$CanvasLayer.show()
	get_tree().paused = true
	$CanvasLayer/Jumpscare3.play()
	await get_tree().create_timer(13).timeout
	get_tree().paused = false
	get_tree().reload_current_scene.call_deferred()


func _on_l_1_pressed():
	get_tree().change_scene_to_file("res://chamber_1.tscn")
	
func _on_l_2_pressed():
	get_tree().change_scene_to_file("res://chamber_2.tscn")
	
func _on_l_3_pressed():
	get_tree().change_scene_to_file("res://chamber_3.tscn")
	
func _on_l_4_pressed():
	get_tree().change_scene_to_file("res://chamber_4.tscn")
	
func _on_l_5_pressed():
	get_tree().change_scene_to_file("res://chamber_5.tscn")
	
func _on_l_6_pressed():
	get_tree().change_scene_to_file("res://exit.tscn")
	
	
func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), value)


func _on_button_pressed():
	get_tree().change_scene_to_file("res://assets/node_2d.tscn")
