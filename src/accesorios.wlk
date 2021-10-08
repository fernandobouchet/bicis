class Farolito {
	const property peso = 0.5
	const property carga = 0
	const property esLuminoso = true
}

class Canasto {
	const property volumen = 8
	const property esLuminoso = false
	
	method peso() = volumen / 10
	
	method carga() = volumen * 2
}

class MorralDeBici {
	const property largo = 21
	var property ojoDeGato = true
	const property peso = 1.2
	
	method carga() = largo / 3
	
	method esLuminoso() = ojoDeGato
}
