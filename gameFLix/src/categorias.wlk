object premium{
	var precio = 50
	method puedeJugarJuego(unJuego){
		return true
	}
}

object base{
	var precio = 25
	method puedeJugarJuego(unJuego){
		return unJuego.esBarato()
	}
}

object prueba{
	var precio = 0
	method puedeJugarJuego(unJuego){
		return unJuego.perteneceACategoria("Demo")
	}
}

object infantil{
	var precio = 10
	method puedeJugarJuego(unJuego){
		return unJuego.perteneceACategoria("Infantil")
	}
}