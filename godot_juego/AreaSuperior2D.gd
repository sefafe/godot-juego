extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://World2.tscn")
