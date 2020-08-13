class Hogar {

	var property nivelMugre
	var property confort

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2
	
	#setter int
	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio()
	}

}

class Mascota {
	#int
	var property nivelSalud
	
	#setter
	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}
	}
	#getter
	method esBueno() = nivelSalud > 250

}

class Huerta {
	
	var property capacidadProduccion

	#bool
	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	}

	method fueAtacado(plaga) {
		#int
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			#int
			capacidadProduccion -= 10
		}
	}

}

object INTA {

	var property produccionMinima

}

