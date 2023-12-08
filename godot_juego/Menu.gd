extends Control



func _on_Play_pressed():
	get_tree().change_scene("res://World.tscn")


func _on_Exit_pressed():
	get_tree().quit()
