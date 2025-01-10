extends Area2D

@onready var timer = $Timer
#drag timer node intop code and hold ctrl and adds a variable :3
@onready var death: AnimationPlayer = %"death animation"
var PLAYER = preload("res://Scenes/player.tscn")

func _on_body_entered(body):
	timer.start()
	#Engine.time_scale = 0.5
	#
func _on_timer_timeout():
	death.play("death")
	await (death)
	PLAYER.global_position = get_node("%SpawnPosition").global_position

	#get_tree().reload_current_scene()
	#Engine.time_scale = 1
##just relods the current scene but get_tree
