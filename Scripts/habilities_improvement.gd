extends Control


@onready var improve_buttons = []


@onready var emprego_button: Button = $StartButtons/PautasButtons/EmpregoButton
@onready var meio_ambiente_button: Button = $StartButtons/PautasButtons/MeioAmbienteButton
@onready var animals_button: Button = $StartButtons/PautasButtons/AnimalsButton
@onready var technology_button: Button = $StartButtons/PautasButtons/TechnologyButton
@onready var imigrants_button: Button = $StartButtons/PautasButtons/ImigrantsButton
@onready var taxes_button: Button = $StartButtons/PautasButtons/TaxesButton
@onready var army_button: Button = $StartButtons/PautasButtons/ArmyButton
@onready var security_button: Button = $StartButtons/PautasButtons/SecurityButton
@onready var health_button: Button = $StartButtons/PautasButtons/HealthButton
@onready var education_button: Button = $StartButtons/PautasButtons/EducationButton



@onready var pautas_buttons = [emprego_button, meio_ambiente_button, animals_button, technology_button,
imigrants_button, taxes_button, army_button, security_button, health_button, education_button
]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for index in pautas_buttons.size() - 1:
		pautas_buttons[index].show()
		pautas_buttons[index].disabled = true
	
	secure_initial_pautas()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _turn_buttons_visible(index : int):
	improve_buttons.show()

func secure_initial_pautas():
	for index in GameManager.pautas_selecionadas.size():
		var pauta = GameManager.pautas_selecionadas[index]
		match pauta:
			"Emprego":
				emprego_button.disabled = false
				emprego_button.toggle_mode = true
			"Meio Ambiente":
				meio_ambiente_button.disabled = false
				meio_ambiente_button.toggle_mode = true
			"Animais":
				meio_ambiente_button.disabled = false
				animals_button.toggle_mode = true
			"Tecnologia":
				technology_button.disabled = false
				technology_button.toggle_mode = true
			"Imigrantes":
				imigrants_button.disabled = false
				imigrants_button.toggle_mode = true
			"Educação":
				education_button.disabled = false
				education_button.toggle_mode = true
			_:
				print("Ação não encontrada")
				
