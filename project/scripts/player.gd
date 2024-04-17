extends CharacterBody2D

@export var speed = 150

var playSound = true

@onready var animations = $AnimationPlayer

@onready var screensize = get_viewport_rect().size

func _ready():
	position = Vector2(screensize.x / 2, screensize.y/2)
		
func _process(delta):
	var input = Input.get_vector("left", "right", "up", "down")
	position += input * speed * delta * 1.5
	if (input != Vector2.ZERO and playSound == true):
		playSound = false
		$Moving.play()
		
	
	else:
		$Moving.stop()

	
func sell():
	pass
	
func shop():
	pass

func _on_moving_finished():
	playSound = true

