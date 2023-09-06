extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _input(event):
	pass

func _on_door_body_entered(body):
	if body == $Player:
		$Door/AnimatedSprite2D.play("default")
		$Door/AudioStreamPlayer.play()
		await get_tree().create_timer(0.5).timeout
		get_tree().change_scene_to_file("res://chamber_1.tscn")


func _on_trigger_body_entered(body):
	if body == $Player:
		$CanvasLayer/AnimationPlayer.play("new_animation")
