extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.hide()
	$Tablet.hide()
	$Jumpscare/Eyes.hide()
	
var tabl: bool = false
var monst: int = 0
var rng = RandomNumberGenerator.new()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $Player.position.x > 585 && $Player.position.y < 543 && $Player.position.x < 9506 && $Player.position.y > 422:
		if monst == 0:
			monst = 1
			var randTime = rng.randf_range(3, 6)
			await get_tree().create_timer(randTime).timeout
			$Jumpscare/Flicker.play("flicker")
			await get_tree().create_timer(1.5).timeout
			$Jumpscare/ColorRect.color = Color(0,0,0)
			monst = 2
			$Jumpscare/Eyes.show()
		if monst == 2:
			monst = 3
			var randTime = rng.randf_range(3, 5)
			await get_tree().create_timer(randTime).timeout
			$Jumpscare/Eyes.hide()
			$Jumpscare/Flicker.play("flicker")
			await get_tree().create_timer(1.5).timeout
			$Jumpscare/ColorRect.color = Color(255,0,0,0)
			monst = 0
	else:
		$Jumpscare/ColorRect.color = Color(255,0,0,0)
		$Jumpscare/Eyes.hide()
		monst = 0
	

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
	if event.is_action_pressed("moveLeft") || event.is_action_pressed("moveRight") || event.is_action_pressed("jump"):
		if monst == 2 || monst == 3:
			$AudioStreamPlayer.stop()
			get_tree().paused = true
			$Jumpscare/Jumpscare3.play()
			await get_tree().create_timer(13).timeout
			get_tree().paused = false
			get_tree().reload_current_scene.call_deferred()
		

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
		$Player.set_position(Vector2(1111, 502))

# Portal 2
func _on_portal_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(5228, 3425))
func _on_return_2_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(2024, 502))


func _on_portal_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(819, 3425))
func _on_return_3_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(3254, 502))
		
		
func _on_portal_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4123, 3425))
func _on_return_4_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(4934, 502))

func _on_portal_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6349, 3425))
func _on_return_5_body_entered(body):
	if body == $Player:
		$Player.set_position(Vector2(6978, 502))
		

func _on_trigger_body_entered(body):
	if body == $Player:
		$CanvasLayer/AnimationPlayer.play("new_animation")


func _on_passphrase_text_submitted(new_text):
	get_tree().paused = true
	if new_text.to_lower() == "he will forgive you eventually":
		$CanvasLayer/Unlock/Passphrase.text = ""
		get_tree().paused = false
		$Door/AnimatedSprite2D.play("default")
		$Door/AudioStreamPlayer.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://exit.tscn")
	else:
		$CanvasLayer/Unlock/Passphrase.text = ""
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "WRONG PASSPHRASE"
		await get_tree().create_timer(0.8).timeout
		$CanvasLayer/Unlock/Passphrase.placeholder_text = "ENTER DECODED PASSPHRASE (IGNORE PUNCTUATION)"
		$CanvasLayer/Unlock/Passphrase.release_focus()
		get_tree().paused = false

	pass # Replace with function body.

