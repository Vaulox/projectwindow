extends ProgressBar

onready var character = $KinematicBody2D/CollisionShape2D # get it somewhere

func _ready():
	character.connect("damaged", self, "_on_character_damage_taken")

func _on_character_damage_taken(impact):
	# Update health bar according to character's current HP
	value = character.hp
	# do something else ...
