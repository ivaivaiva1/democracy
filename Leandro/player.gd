extends Node2D

var fans: int = 0
var click_profit: float = 100


var auto_clicks_per_min: int = 20
var auto_click_timer: float = 0


func _process(delta: float) -> void:
	if auto_clicks_per_min > 0:
		if auto_click_timer > 0:
			auto_click_timer -= delta
		else:
			var click_cooldown_variation = randf_range(0.5, 1.5)
			auto_click_timer = (60 / auto_clicks_per_min) * click_cooldown_variation
			do_click_profit()


func _on_button_button_down() -> void:
	do_click_profit()

func do_click_profit():
	var woned_fans: int = 0
	woned_fans += get_fans_number(ElectorManager.adolescentes)
	woned_fans += get_fans_number(ElectorManager.jovens)
	woned_fans += get_fans_number(ElectorManager.adultos)
	woned_fans += get_fans_number(ElectorManager.idosos)
	fans += woned_fans


func get_fans_number(age_group: ElectorManager.age_group) -> float:
	var index = randi_range(0, 100)
	index -= age_group.player_receptividade
	if age_group.player_satisfaction < 2:
		if index < 15:
			return click_profit
		else:
			return 0
	
	
	elif  age_group.player_satisfaction < 4:
		if index < 15:
			return click_profit * 2
		elif index < 40:
			return click_profit 
		else:
			return 0
	
	
	elif age_group.player_satisfaction < 6:
		if index < 10:
			return click_profit * 3
		elif index < 40:
			return click_profit * 2
		else:
			return click_profit
	
	
	elif  age_group.player_satisfaction < 8:
		if index < 5:
			return click_profit * 4
		elif index < 25:
			return click_profit * 3
		elif index < 60:
			return click_profit * 2
		else:
			return click_profit
	
	
	elif  age_group.player_satisfaction <= 10:
		if index < 10:
			return click_profit * 5
		elif index < 30:
			return click_profit * 4
		elif index < 70:
			return click_profit * 3
		else:
			return click_profit * 2
	
	else:
		return 0
