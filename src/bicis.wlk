import accesorios.*

class Bicicleta {
	const property rodado
	const property largo
	const property marca = "Olmo"
	const property accesorios = #{}
	
	method agregarAccesorio(accesorio) {
		accesorios.add(accesorio)
	}
	method quitarAccesorio(accesorio) {
		accesorios.remove(accesorio)
	}
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
