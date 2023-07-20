extends Sprite2D


var velocity = Vector2(300, 200)
var random = [-1, 1]
var start_direciton = random[randi_range(0,1)]


func _process(delta):
	position += start_direciton * velocity * delta

func _on_Ball_body_entered(body):
	print(body)
	if body.name == "Left" or body.name == "Right":
		velocity.x *= -1
