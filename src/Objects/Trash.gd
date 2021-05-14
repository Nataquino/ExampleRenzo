extends Area2D


onready var anim_player: AnimationPlayer = $AnimationPlayer

export var score: = 100


func _on_body_entered(body: Actor) -> void:
	picked()


func picked() -> void:
	PlayerData.score += score
	$AudioStreamPlayer2D.play(1)
	anim_player.play("picked")
	
