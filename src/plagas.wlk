class Plaga {
	#int
	var property poblacion
	
	#bool
	method transmiteEnfermedad() = poblacion >= 10
	
	#setter
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	}
}

class PlagaCucaracha inherits Plaga {
	#int
	var property pesoPromedio
	#bool
	method nivelDanio() {
		return poblacion / 2
	}
	#bool
	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}
	#setter
	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}

}

class PlagaMosquito inherits Plaga {

	method nivelDanio() {
		return poblacion
	}
	
	#int
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}

}

class PlagaPulgas inherits Plaga {
	#int
	method nivelDanio() = poblacion * 2

}

class PlagaGarrapatas inherits PlagaPulgas {
	
	
	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}

}

