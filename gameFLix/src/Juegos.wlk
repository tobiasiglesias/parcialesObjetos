class Juego{
	var nombre
	var precio 
	var categoria
	
	method nombre() = nombre
	method precio() = precio
	method categoria() = categoria
	
	method esBarato(){
		return self.precio() < 30
	}
	
	method perteneceACategoria(unaCategoria){
		return self.categoria().equals(unaCategoria)
	}
}

class JuegoViolento inherits Juego{
	method serJugado(unUsuario, unasHoras){
		unUsuario.reducirHumor(10 * unasHoras)
	}
}

class MOBA inherits Juego{
	method serJugado(unUsuario, unasHoras){
		unUsuario.comprarSkins()
	}
}

class JuegoTerror inherits Juego{
	method serJugado(unUsuario, unasHoras){
		unUsuario.tirarTodoAlCarajo()
	}
}

class JuegoEstrategico inherits Juego{
	method serJugado(unUsuario, unasHoras){
		unUsuario.aumentarHumor(5 * unasHoras)
	}
}