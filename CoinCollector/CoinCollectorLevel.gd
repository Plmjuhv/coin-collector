extends Node2D

var score : int = 0
@export var scoreText : Label

func incScore(amount : int):
	score += amount
	if score >= 27:
		scoreText.text = "Congratulations! You collected " + str(score) + " coins! Is that all?"
		var coinScene = preload("res://coin.tscn")
		var coin = coinScene.instantiate()
		add_child(coin)
		
		coin.position = Vector2(randi_range(0, 1920), randi_range(0, 1920))
	else:
		scoreText.text = str("Coins Collected: ", score)
