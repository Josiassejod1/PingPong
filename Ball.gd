extends Area2D

var velocity = Vector2(300, 200)
var random = [-1, 1]
var start_direciton = random[randi_range(0,1)]


func _process(delta):
	position += start_direciton * velocity * delta

func _on_Ball_body_entered(area):
	if area.name == "WallTop" or area.name == "WallBottom":
		# Reverse the ball's y-velocity to make it bounce off the top or bottom wall.
		velocity.y *= -1
	if area.name == "Left" or area.name == "Right":
		velocity.x *= -1
