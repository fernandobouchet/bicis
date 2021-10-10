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

/* 
RESPUESTA PUNTO Nro 5

Para agregar otro accesorio se debe generar una clase que 
cumpla con el polimorfismo de los accesorios existentes.

Como mejora se propone agregar "ubicación" de los accesorios (delantera, trasera, cuadro, etc).

*/


