extends Area2D

func _on_body_entered(body):
	body.scale += Vector2(0.1, 0.1)
	body.rotate(2 * PI / 27)
	body.rotation = round_to_dec(body.rotation, 4)
	body.skew += 2 * PI / 27
	body.skew = round_to_dec(body.skew, 4)
	get_node("/root/Node2D").incScore(1)
	
	queue_free()
	
func round_to_dec(num, digit):
	return round(num * pow(10.0, digit)) / pow(10.0, digit)
