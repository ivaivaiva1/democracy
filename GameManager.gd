extends Node

var Personagens = ["Biden", "Lula", "Trump", "Bolsonaro"]
var personagem_index : int 
var Pautas = ["Emprego", "Meio Ambiente", "Animais", "Tecnologia", "Imigrantes", "Impostos",
"Exército", "Saúde", "Educação"]
var pautas_selecionadas = []
var actual_country: String

func _ready() -> void:
	actual_country = "Brasil"



func _process(delta: float) -> void:
	pass
