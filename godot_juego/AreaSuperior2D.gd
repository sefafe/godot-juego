extends Area2D

func physicsprocess(delta):
	var bodies = get_overlapping_bodies()
	print(bodies)
	for body in bodies:
		if body.name == "Player":
			get_tree().change_scene("res://World2.tscn")
