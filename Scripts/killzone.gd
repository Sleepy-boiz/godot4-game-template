extends Area2D

@onready var timer = $Timer
#drag timer node intop code and hold ctrl and adds a variable :3
@onready var death_pos: AnimationPlayer = %DeathPos

func _on_body_entered(body):
	timer.start()
	Engine.time_scale = 0.5
func _on_timer_timeout():
	death_pos.play("Death")
	Engine.time_scale = 1
##just relods the current scene but get_tree
