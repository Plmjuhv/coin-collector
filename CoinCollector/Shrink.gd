extends Area2D

func _on_body_entered(body):
	if body.name == "Player":
		$Timer.start()

func _on_body_exited(body):
	if body.name == "Player":
		$Timer.stop()

func _on_timer_timeout():
	var player = get_node("../Player")
	
	if player.scale.x > 1:
		player.scale.x -= 0.05
	elif player.scale.x < 1:
		player.scale.x += 0.05
		
	if player.scale.y > 1:
		player.scale.y -= 0.05
	elif player.scale.y < 1:
		player.scale.y += 0.05
	
	player.scale.x = round_to_dec(player.scale.x, 2)
	player.scale.y = round_to_dec(player.scale.y, 2)

func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)
