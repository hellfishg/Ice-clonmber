extends KinematicBody2D

var speed = 100
var gravity = 1300

var distance = Vector2()
var direction = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	$SpriteP1.animation = "idle"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2()
	#Gravedad
	
	#Controles
	if(Input.is_action_pressed("P1left")):
		$SpriteP1.animation = "right"
		$SpriteP1.flip_h = true
		$SpriteP1.playing = true
		velocity.x -= 50
		
	if(Input.is_action_pressed("P1right")):
		$SpriteP1.animation = "right"
		$SpriteP1.flip_h = false
		$SpriteP1.playing = true
		velocity.x += 50
		
	if(Input.action_press("P1jump")):
		pass
	
	position += velocity * delta