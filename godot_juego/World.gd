extends Node2D

func _on_position_scene():
	if get_global_position().x >= 158 and get_global_position().x<=226 and get_global_position().y ==0:
		print("Hola")
		get_tree().change_scene("res://World2.tscn")
