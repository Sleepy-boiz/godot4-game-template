extends Area2D

@onready var end_message: Label = $"../End Message"

func _on_body_entered(body: Node2D) -> void:
	end_message.show()
