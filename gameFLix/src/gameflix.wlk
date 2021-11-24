import Usuarios.*
import categorias.*
import Juegos.*

object gameflix{
	
	const juegos = #{}
	const usuarios = #{}
	
	method juegos() = juegos
	method usuarios() = usuarios
	
	method filtrarJuegosPorCategoria(unaCategoria){
		self.juegos().filter({ unJuego => unJuego.perteneceACategoria(unaCategoria) })
	}
	
	method buscarJuego(unNombre){
		return self.juegos().findOrElse({unJuego => unJuego.seLlama(unNombre)}, {throw new Exception(message = "juego no encontrado")})
	}
	
	method recomendarJuego(){
		return self.juegos().anyOne()
	}
	
	method cobrarSuscripcion(){
		self.usuarios().map({ unUsuario => unUsuario.pagarSuscripcion()})
	}
	
	
}