import accesorios.*

class Bicicleta {
	const property rodado = 28
	const property largo = 150
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
	method cantAccesoriosLivianos() {
		return accesorios.filter({acces => acces.peso() < 1}).size()
	}
}

biciR28 = new Bicicleta()
biciR28.agregarAccesorio(new Farolito())

/* una bici rodado 28, de 150 cm de largo, marca Olmo, como único accesorio tiene un farolito.
Para esta bici tenemos: altura 85, velocidad de crucero 34, carga 0, peso 14.5 (14 de la bici + 0.5 del farolito), tiene luz
(por el farolito), tiene 1 accesorio liviano. */

biciR26 = new Bicicleta(rodado = 26, marca="Legnano", largo = 110)
biciR26.agregarAccesorio(new Farolito())
biciR26.agregarAccesorio(new Canasto())
biciR26.agregarAccesorio(new MorralDeBici())

/* una bici rodado 26, largo 110 cm, marca "Legnano", accesorios: un farolito, un canasto con volunen 8, un morral de largo 21 
con ojo de gato.
Para esta bici tenemos: altura 80, velocidad de crucero 28, peso 15.5 (13 de la bici, 0.5 del farolito, 0.8 del canasto, 1.2 del morral), carga 23 (16 del canasto más 7 del morral), 
tiene luz (porque el morral tiene ojo de gato), 2 accesorios livianos (el farolito y el canasto). */

biciR20 = new Bicicleta(rodado = 20, marca="Legnano", largo = 90)
biciR20.agregarAccesorio(new MorralDeBici(ojoDeGato = false, largo = 6))

/* una bici rodado 20, largo 90 cm, marca "Legnano", como único accesorio un morral de largo 6 y sin ojo de gato.
Para esta bici tenemos: altura 65, velocidad de crucero 22, carga 2, peso 11.2 (10 de la bici + 1.2 del morral), 
no tiene luz, no tiene ningún accesorio liviano. */
