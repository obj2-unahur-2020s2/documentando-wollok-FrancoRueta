class Barrio {
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
	#retorna elementos
	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	}
	#retorna elementos
	method elementosMalos() = elementos.count{ e => not e.esBueno() }
	#retorna bool
	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}

}

