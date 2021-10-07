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

// falta completar

}