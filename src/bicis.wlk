class Bicicleta {
	var property rodado
	var property largo
	var property marca = "Olmo"
	var property accesorios = []
	
	method altura() {
		return rodado * 2.5 + 15
	}
	method velocidadDeCrucero() {
		return if (self.largo() > 120) {rodado + 6} else {rodado + 2}
	}
	method carga() {
		return accesorios.sum({ acces => acces.carga() })
	}
	method peso() {
		return accesorios.sum({ acces => acces.peso() }) + rodado / 2
	}
	method tieneLuz() {
		return accesorios.any({ acces => acces.esLuminoso() })
	}
}