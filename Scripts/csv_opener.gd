extends Node

var csv_data = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	load_csv("res://Files/csv/Decretos Presidente - Página1.csv")

func load_csv(File_Path : String):
	var file = FileAccess.open(File_Path, FileAccess.ModeFlags.READ)
	if file:
		var headers : Array[String] = file.get_line().strip_edges().split(",")
		
		while not file.eof_reached():
			var line : String = file.get_line().strip_edges()
			if line != "":
				var values : Array[String] = line.split(",")
				var entry : Dictionary = {}
				
				for i in range(headers.size()):
					entry[headers[i]] = values[i]
					
				csv_data.append(entry)
		file.close()
	else:
		print("Arquivo CSV não encontrado")
