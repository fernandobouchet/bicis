import bicis.*

class Deposito {
	const property bicicletas = #{}

	method agregarBicicleta(bicicleta) {
		bicicletas.add(bicicleta)
	}
	method quitarBicicleta(bicicleta) {
		bicicletas.remove(bicicleta)
	}
	method bicisRapidas() {
		return bicicletas.filter({ bicis => bicis.velocidadDeCrucero() > 25 })
	}

	method marcaBicis() {
		return bicicletas.map({ bicis => bicis.marca() }).asSet()
	}

	method esNocturno() { 
		return bicicletas.all({ bicis => bicis.tieneLuz() })
	}

	method biciParaLlevar_Kg(peso) {
		return bicicletas.any({ bicis => bicis.carga() > peso })
	}

	method laMarcaDeBiciMasRapida() {
		return bicicletas.max({bicis => bicis.velocidadDeCrucero() }).marca()
	}

	method laCargaDeLasBicisLargas(){
		return bicicletas.filter({bicis => bicis.largo() > 170}).sum({bicis => bicis.carga()})
	}

	method bicisSinAccesorios() {
		return bicicletas.count({ bicis => bicis.accesorios() == #{} })
	}
}
