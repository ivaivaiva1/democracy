extends Node

var adolescentes
var jovens
var adultos
var idosos

class age_group:
	var max_voters: int
	var available_voters: int
	var player_satisfaction: float
	var enemy_satisfaction: float
	var player_receptividade: float = 0
	var enemy_receptividade: float = 0


func _ready():
	clear_age_groups()
	populate_age_groups()


func clear_age_groups():
	adolescentes = null
	jovens = null
	adultos = null
	idosos = null

func populate_age_groups():
	match(GameManager.actual_country):
		"Brasil":
			# 15 - 24
			var age_data = age_group.new()
			age_data.max_voters = 320000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			adolescentes = age_data
			age_data = null
			
			# 25 - 39
			age_data = age_group.new()
			age_data.max_voters = 500000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			jovens = age_data
			age_data = null
			
			# 40 - 59
			age_data = age_group.new()
			age_data.max_voters = 560000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			adultos = age_data
			age_data = null
			
			# 60+
			age_data = age_group.new()
			age_data.max_voters = 330000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			idosos = age_data
			age_data = null
		
		"EUA":
			# 15 - 24
			var age_data = age_group.new()
			age_data.max_voters = 660000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			adolescentes = age_data
			age_data = null
			
			# 25 - 39
			age_data = age_group.new()
			age_data.max_voters = 650000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			jovens = age_data
			age_data = null
			
			# 40 - 59
			age_data = age_group.new()
			age_data.max_voters = 910000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			adultos = age_data
			age_data = null
			
			# 60+
			age_data = age_group.new()
			age_data.max_voters = 1110000000
			age_data.available_voters = age_data.max_voters
			age_data.player_satisfaction = 5
			age_data.enemy_satisfaction = 5
			#age_data.receptividade = 1
			idosos = age_data
			age_data = null
