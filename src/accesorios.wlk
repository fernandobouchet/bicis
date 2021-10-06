class Farolito {
	const property peso = 0.5
	const property carga = 0
	const property esLuminoso = true
}

class Canasto {
	var property volumen
	const property esLuminoso = false
	
	method peso() {
		return volumen / 10
	}
	method carga() {
		return volumen * 2
	}
}

class MorralDeBici {
	var property largo
	var property ojoDeGato = false
	const property peso = 1.2
	
	method carga() {
		return largo / 3
	}
	
	method esLuminoso() {
		return ojoDeGato
	}
}