class Vencimiento{
	var fechaDeVencimiento
	
	method estaVencido(){
		return fechaDeVencimiento < new Date()
	}
}

object noVence{
	method estaVencido(){
		return false
	}
}