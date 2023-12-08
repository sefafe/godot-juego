extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == "Player":
		# Guarda la posición actual del jugador antes de cambiar de escena
		var player_position = body.global_position

		# Cambia a la nueva escena
		get_tree().change_scene("res://World.tscn")

		# Obtiene el nuevo nodo del jugador en la nueva escena
		var new_player = get_node("/root/World/Player")

		# Verifica si el nodo del jugador existe
		if new_player != null:
			# Restaura la posición del jugador en la nueva escena
			new_player.global_position = player_position
		

