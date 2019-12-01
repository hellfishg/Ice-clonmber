extends KinematicBody2D

var speed = 100
var gravity = 1300

var distance = Vector2()
var direction = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	$SpriteP1/AnimationPlayer.current_animation = "idle"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Gravedad
	var velocity = Vector2()
	#Controles
	if(Input.is_action_pressed("P1left")):
		$SpriteP1/AnimationPlayer.current_animation = "right"
		$SpriteP1.flip_h = true
		velocity.x -= 50
		
	if(Input.is_action_pressed("P1right")):
		$SpriteP1/AnimationPlayer.current_animation = "right"
		$SpriteP1.flip_h = false
		velocity.x += 50
		
	if(Input.action_press("P1jump")):
		pass
		
	if(velocity.y == 0 && velocity.x == 0):
		$SpriteP1/AnimationPlayer.current_animation = "idle"
	
	velocity.y += gravity * delta
	position += velocity * delta
	move_and_slide(velocity,Vector2(0,0))
	