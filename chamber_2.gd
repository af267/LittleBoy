extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.hide()
	$Tablet.hide()
	
var tabl: bool = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	if event.is_action_pressed("respawn"):
		get_tree().reload_current_scene.call_deferred()
	if event.is_action_pressed("tablet"):
		if tabl == true:
			tabl = false
			$Tablet.hide()
		elif tabl == false:
			tabl = true
			$Tablet.show()
		

func _on_door_body_entered(body):
	if body == $Player:
		$CanvasLayer/Unlock.play("passphrase")
		await get_tree().create_timer(0.5).timeout
		get_tree().paused = true
		
func _on_enemy_body_entered(body):
	if body == $Player:
		$AudioStreamPlayer.stop()
		get_tree().paused = true
		$Jumpscare/Jumpscare1.play()
		await get_tree().create_timer(1.8).timeout
		get_tree().paused = false
		get_tree().reload_current_scene.call_deferred()
		
# Portal 1
func _on_portal_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3034, 3425))
func _on_return_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(651, 1219))

# Portal 2
func _on_portal_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(5228, 3425))
func _on_return_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(-363, 790))


func _on_portal_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(819, 3425))
func _on_return_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(216, 1654))
		
		
func _on_portal_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4123, 3425))
func _on_return_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(724, 2134))

func _on_portal_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6349, 3425))
func _on_return_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(-161, 2324))
		
		
func _on_portal_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1907, 3425))
func _on_return_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(741, 2518))
		

func _on_portal_7_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(-311, 3429))
func _on_return_7_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1466, 2948))
		
		
func _on_portal_8_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(8520, 3429))
func _on_return_8_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1801, 741))
		
		
func _on_portal_9_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(7419, 3429))
func _on_return_9_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(2621, 2086))
		
		
func _on_portal_10_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(-1415, 3429))
func _on_return_10_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(2232, 1078))


func _on_trigger_body_entered(body):
	if body == $Player:
		$CanvasLayer/AnimationPlayer.play("new_animation")


func _on_passphrase_text_submitted(new_text):
	get_tree().paused = true
	if new_text.to_lower() == "youre the only one who was there when it happened":
		$CanvasLayer/Unlock/Passphrase.text = ""
		get_tree().paused = false
		$Door/AnimatedSprite2D.play("default")
		$Door/AudioStreamPlayer.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://chamber_3.tscn")
	else:
		$CanvasLayer/Unlock/Passphrase.text = ""
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "WRONG PASSPHRASE"
		await get_tree().create_timer(0.8).timeout
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "ENTER PASSPHRASE (IGNORE PUNCTUATION)"
		$CanvasLayer/Unlock/Passphrase.release_focus()
		get_tree().paused = false

	pass # Replace with function body.

