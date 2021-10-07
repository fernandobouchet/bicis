class Deposito {
    var property bicicletas = []
    var property nocturno = false

    method bicisRapidas() {
        return bicicletas.filter({ bicis => bicis.velocidadDeCrucero() > 25 })
    }
    
    method marcaBicis() {
        return bicicletas.map({ bicis => bicis.marca() }) // corregir
    }

    method esNocturno() { 
    	return self.nocturno()
    }

    method biciParaLlevar_Kg(peso) {
        return bicicletas.any({ bicis => bicis.carga() > peso })
    }

// falta completar

}