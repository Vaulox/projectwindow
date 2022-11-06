extends CollisionShape2D

signal damaged(by)
signal killed()


var health_max = 10

var health = 10


func take_damage(impact):
	impact = clamp(impact, 0.0, 1.0)
	var damage = health_max * impact
	var prev_health = health
	health -= damage
	health = clamp(health, 0, health_max)

	if prev_health != health:
		emit_signal("damaged", damage)

	if health <= 0.0:
		emit_signal("killed")
	
func update_healthbar(health):
	get_node("ProgressBar").set_value(health)
