extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("respawn"):
		get_tree().reload_current_scene.call_deferred()
		

func _on_door_body_entered(body):
	if body == $Player:
		$CanvasLayer/Unlock.play("passphrase")
		await get_tree().create_timer(0.5).timeout
		get_tree().paused = true
		
# Portal 1
func _on_portal_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3034, 3425))
func _on_return_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(2343, 590))

# Portal 2
func _on_portal_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(5228, 3425))
func _on_return_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4344, 591))


func _on_portal_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(819, 3425))
func _on_return_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(5161, 1460))
		
		
func _on_portal_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4123, 3425))
func _on_return_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3192, -796))

func _on_portal_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6349, 3425))
func _on_return_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6504, 404))
		
		
func _on_portal_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1907, 3425))
func _on_return_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(7413, 4627))


func _on_trigger_body_entered(body):
	if body == $Player:
		$CanvasLayer.show()
		$CanvasLayer/AnimationPlayer.play("trigger")


func _on_passphrase_text_submitted(new_text):
	if new_text.to_lower() == "jay believes you can do it":
		$CanvasLayer/Unlock/Passphrase.text = ""
		get_tree().paused = false
		$Door/AnimatedSprite2D.play("default")
		$Door/AudioStreamPlayer.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://chamber_2.tscn")
	else:
		$CanvasLayer/Unlock/Passphrase.text = ""
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "WRONG PASSPHRASE"
		get_tree().paused = false
		await get_tree().create_timer(0.8).timeout
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "ENTER PASSPHRASE (IGNORE PUNCTUATION)"
		$CanvasLayer/Unlock/Passphrase.release_focus()
		get_tree().paused = false
