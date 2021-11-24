import categorias.*
class Usuario{
	
	var property suscripcion
	var dinero
	var humor
	
	method dinero() = dinero
	method humor() = humor
	
	
	
	method jugarUnJuego(unJuego, unasHoras){
		if(suscripcion.puedeJugarJuego(unJuego)){
			unJuego.serJugado(unasHoras)
		} else throw new Exception(message = "No tiene categoria suficiente para jugar al juego")
	}
	
	method pagarSuscripcion(){
		if(self.puedePagarMes()){
			self.pagarUnaCantidad(self.suscripcion().precio())
		} else {
			self.suscripcion(prueba)
		}
	}
	
	method puedePagarMes(){
		return self.dinero() >= self.suscripcion().precio()
	}
	
	method pagarUnaCantidad(unaCantidad){
		dinero -= unaCantidad
	}
	
	method reducirHumor(unaCantidad){
		humor -= unaCantidad
	}
	
	method aumentarHumor(unaCantidad){
		humor += unaCantidad
	}
	
	method comprarSkins(){
		if(self.dinero() < 30){
			throw new Exception(message = "no alcanza el cash")
		}
		else{
			self.pagarUnaCantidad(30)
		}
	}
	method tirarTodoAlCarajo(){
		self.suscripcion(infantil)
	}
	
}