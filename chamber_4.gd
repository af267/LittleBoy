extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.hide()
	$Tablet.hide()
	
var tabl: bool = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Player.position.x > 629 && $Player.position.y < 528 && $Player.position.x < 1803 && $Player.position.y > 385:
		if $Enemy.position.x > $Player.position.x + 10:
			$Enemy.set_position(Vector2($Enemy.position.x-2, $Enemy.position.y))
		elif $Enemy.position.x < $Player.position.x - 10:
			$Enemy.set_position(Vector2($Enemy.position.x+2, $Enemy.position.y))
		else:
			if $Enemy.position.y > $Player.position.y:
				$Enemy.set_position(Vector2($Enemy.position.x, $Enemy.position.y - 3))
			elif $Enemy.position.y < $Player.position.y:
				$Enemy.set_position(Vector2($Enemy.position.x, $Enemy.position.y + 3))
	if $Player.position.x > 1909 && $Player.position.y < 432 && $Player.position.x < 3094 && $Player.position.y > 289:
		if $Enemy2.position.x > $Player.position.x + 10:
			$Enemy2.set_position(Vector2($Enemy2.position.x-2, $Enemy2.position.y))
		elif $Enemy2.position.x < $Player.position.x - 10:
			$Enemy2.set_position(Vector2($Enemy2.position.x+2, $Enemy2.position.y))
		else:
			if $Enemy2.position.y > $Player.position.y:
				$Enemy2.set_position(Vector2($Enemy2.position.x, $Enemy2.position.y - 3))
			elif $Enemy2.position.y < $Player.position.y:
				$Enemy2.set_position(Vector2($Enemy2.position.x, $Enemy2.position.y + 3))
	if $Player.position.x > 3217 && $Player.position.y < 334 && $Player.position.x < 4393 && $Player.position.y > 193:
		if $Enemy3.position.x > $Player.position.x + 10:
			$Enemy3.set_position(Vector2($Enemy3.position.x-2, $Enemy3.position.y))
		elif $Enemy3.position.x < $Player.position.x - 10:
			$Enemy3.set_position(Vector2($Enemy3.position.x+2, $Enemy3.position.y))
		else:
			if $Enemy3.position.y > $Player.position.y:
				$Enemy3.set_position(Vector2($Enemy3.position.x, $Enemy3.position.y - 3))
			elif $Enemy3.position.y < $Player.position.y:
				$Enemy3.set_position(Vector2($Enemy3.position.x, $Enemy3.position.y + 3))
	if $Player.position.x > 3292 && $Player.position.y < 528 && $Player.position.x < 4393 && $Player.position.y > 385:
		if $Enemy4.position.x > $Player.position.x + 10:
			$Enemy4.set_position(Vector2($Enemy4.position.x-2, $Enemy4.position.y))
		elif $Enemy4.position.x < $Player.position.x - 10:
			$Enemy4.set_position(Vector2($Enemy4.position.x+2, $Enemy4.position.y))
		else:
			if $Enemy4.position.y > $Player.position.y:
				$Enemy4.set_position(Vector2($Enemy4.position.x, $Enemy4.position.y - 3))
			elif $Enemy4.position.y < $Player.position.y:
				$Enemy4.set_position(Vector2($Enemy4.position.x, $Enemy4.position.y + 3))
	if $Player.position.x > 1993 && $Player.position.y < 624 && $Player.position.x < 3193 && $Player.position.y > 483:
		if $Enemy5.position.x > $Player.position.x + 10:
			$Enemy5.set_position(Vector2($Enemy5.position.x-2, $Enemy5.position.y))
		elif $Enemy5.position.x < $Player.position.x - 10:
			$Enemy5.set_position(Vector2($Enemy5.position.x+2, $Enemy5.position.y))
		else:
			if $Enemy5.position.y > $Player.position.y:
				$Enemy5.set_position(Vector2($Enemy5.position.x, $Enemy5.position.y - 3))
			elif $Enemy5.position.y < $Player.position.y:
				$Enemy5.set_position(Vector2($Enemy5.position.x, $Enemy5.position.y + 3))
	if $Player.position.x > 652 && $Player.position.y < 722 && $Player.position.x < 1895 && $Player.position.y > 577:
		if $Enemy6.position.x > $Player.position.x + 10:
			$Enemy6.set_position(Vector2($Enemy6.position.x-2, $Enemy6.position.y))
		elif $Enemy6.position.x < $Player.position.x - 10:
			$Enemy6.set_position(Vector2($Enemy6.position.x+2, $Enemy6.position.y))
		else:
			if $Enemy6.position.y > $Player.position.y:
				$Enemy6.set_position(Vector2($Enemy6.position.x, $Enemy6.position.y - 3))
			elif $Enemy6.position.y < $Player.position.y:
				$Enemy6.set_position(Vector2($Enemy6.position.x, $Enemy6.position.y + 3))
	if $Player.position.x > 696 && $Player.position.y < 1056 && $Player.position.x < 789 && $Player.position.y > 769:
		if $Enemy7.position.x > $Player.position.x + 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x-3, $Enemy7.position.y))
		elif $Enemy7.position.x < $Player.position.x - 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x+3, $Enemy7.position.y))
		else:
			if $Enemy7.position.y > $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y - 3))
			elif $Enemy7.position.y < $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y + 3))
	if $Player.position.x > 934 && $Player.position.y < 1056 && $Player.position.x < 1078 && $Player.position.y > 769:
		if $Enemy7.position.x > $Player.position.x + 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x-4, $Enemy7.position.y))
		elif $Enemy7.position.x < $Player.position.x - 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x+4, $Enemy7.position.y))
		else:
			if $Enemy7.position.y > $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y - 3))
			elif $Enemy7.position.y < $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y + 3))
	if $Player.position.x > 1225 && $Player.position.y < 1056 && $Player.position.x < 1559 && $Player.position.y > 769:
		if $Enemy7.position.x > $Player.position.x + 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x-4, $Enemy7.position.y))
		elif $Enemy7.position.x < $Player.position.x - 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x+4, $Enemy7.position.y))
		else:
			if $Enemy7.position.y > $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y - 3))
			elif $Enemy7.position.y < $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y + 3))
	if $Player.position.x > 1755 && $Player.position.y < 1056 && $Player.position.x < 1919 && $Player.position.y > 769:
		if $Enemy7.position.x > $Player.position.x + 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x-4, $Enemy7.position.y))
		elif $Enemy7.position.x < $Player.position.x - 10:
			$Enemy7.set_position(Vector2($Enemy7.position.x+4, $Enemy7.position.y))
		else:
			if $Enemy7.position.y > $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y - 3))
			elif $Enemy7.position.y < $Player.position.y:
				$Enemy7.set_position(Vector2($Enemy7.position.x, $Enemy7.position.y + 3))
	

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
		$Jumpscare/Jumpscare2.play()
		await get_tree().create_timer(1.8).timeout
		get_tree().paused = false
		get_tree().reload_current_scene.call_deferred()
		
# Portal 1
func _on_portal_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3034, 3425))
func _on_return_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1895, 409))

# Portal 2
func _on_portal_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(5228, 3425))
func _on_return_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3193, 313))


func _on_portal_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(819, 3425))
func _on_return_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4489, 501))
		
		
func _on_portal_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4123, 3425))
func _on_return_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3200, 597))

func _on_portal_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6349, 3425))
func _on_return_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1902, 692))
		
		
func _on_portal_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1907, 3425))
func _on_return_6_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(905, 1030))
		

func _on_portal_7_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(-311, 3429))
func _on_return_7_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1193, 1030))
		
		
func _on_portal_8_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(7417, 3429))
func _on_return_8_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(1698, 1030))


func _on_trigger_body_entered(body):
	if body == $Player:
		$CanvasLayer/AnimationPlayer.play("new_animation")


func _on_passphrase_text_submitted(new_text):
	get_tree().paused = true
	if new_text.to_lower() == "make it up with him its still possible":
		$CanvasLayer/Unlock/Passphrase.text = ""
		get_tree().paused = false
		$Door/AnimatedSprite2D.play("default")
		$Door/AudioStreamPlayer.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://chamber_5.tscn")
	else:
		$CanvasLayer/Unlock/Passphrase.text = ""
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "WRONG PASSPHRASE"
		await get_tree().create_timer(0.8).timeout
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "ENTER DECODED PASSPHRASE (IGNORE PUNCTUATION)"
		$CanvasLayer/Unlock/Passphrase.release_focus()
		get_tree().paused = false

	pass # Replace with function body.

