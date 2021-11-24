class Comensal{
	var property posicion
	var property elementosCercanos = []
	var property criterio
	var property criterioComida
	const property registroComidas = #{}
	
	method elementosCercanos() = elementosCercanos
	
	method pasarComida(otraPersona){
		self.criterio().apply(self, otraPersona)
	}
	
	method agregarElemento(unElemento){
		self.elementosCercanos().add(unElemento)
	}
	
	method eliminarElemento(elElemento){
		self.elementosCercanos().remove(elElemento)
	}
	
	method pasarAlgo(unaPersona, unElemento){
		self.criterio().apply(self, unaPersona, unElemento)
	}
	
	
	
	
	method pasarElemento(unaPersona, unElemento){
		if(self.tieneElemento(unElemento)){
			unaPersona.agregarElemento(unElemento)
			self.eliminarElemento(unElemento)
		} else {
			throw new Exception(message = "no tiene el elemento xD")
		}
	}
	
	method tieneElemento(unElemento){
		return self.elementosCercanos().contains(unElemento)
	}
	

	
	method cambiarDeLugar(unaPersona){
		const posicionDeLaPersona = self.posicion()
		const elementosDeLaPersona = self.elementosCercanos()
		self.posicion(unaPersona.posicion())
		self.elementosCercanos(unaPersona.elementosCercanos())
		unaPersona.posicion(posicionDeLaPersona)
		unaPersona.elementosCercanos(elementosDeLaPersona)
		
		
		
	}
	
	method comer(unPlato){
		if(self.personaPuedeComer(unPlato)){
			self.registrarComida(unPlato)
		}
	}
	
	method personaPuedeComer(unPlato){
		return self.criterioComida().puedeComer(unPlato)
	}
	
	method registrarComida(unPlato){
		self.registroComidas().add(unPlato)
	}
	
	method estaPipon(){
		return self.registroComidas().any({ unPlato => unPlato.esPesado() })
	}
	
}