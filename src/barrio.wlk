class Barrio {

	#Las respuestas son las que estan arriba de cada linea de codigo, no debajo
	
	#elem ==> list
	const property elementos = []

	#setter
	method agregarElemento(elemento) {
		elementos.add(elemento)
	}
	#setter
	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}
	#retorna elementos #NO, retorna un int.
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}
	#retorna elementos #No, retorna un int.
	method elementosMalos() = elementos.count{ e => not e.esBueno() }
	
	#retorna bool
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

