// se que estoy rompiendo el encapsulamiento, pero en esta situacion me parece correcto que el criterio maneje los
// atributos de la persona, porque si no la persona cargaria con demasiado comportamiento


object sordo{
	
	method apply(unaPersona, otraPersona, unElemento){
		
		unaPersona.pasarElemento(otraPersona, unaPersona.elementosCercanos().head())
	}
}

object pasarTodosLosElementos{
	method apply(unaPersona, otraPersona, unElemento){
		otraPersona.elementosCercanos().addAll(unaPersona.elementosCercanos())
		unaPersona.elementosCercanos().clear()
	}
	
}

object cambiarDeLugar{
	method apply(unaPersona, otraPersona, unElemento){
		unaPersona.cambiarDeLugar(otraPersona)
	}
}

object pasarElementoPedido{
	method apply(unaPersona, otraPersona, unElemento){
		unaPersona.pasarElemento(otraPersona, unElemento)
	}
}