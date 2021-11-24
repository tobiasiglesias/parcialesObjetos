object alegria{
	
	method asentarUnRecuerdo(unaPersona, unRecuerdo){
		if (unaPersona.nivelDeFelicidad() > 500){
			unaPersona.agregarPensamientoCentral(unRecuerdo)
		}
	}
	
	method esRecuerdoNegado(unRecuerdo){
		return unRecuerdo.emocion().equals(self)
	}
	
	
}

object tristeza{
	method asentarUnRecuerdo(unaPersona, unRecuerdo){
		unaPersona.agregarPensamientoCentral(unRecuerdo)
		unaPersona.disminuirCoeficienteDeFelicidad(10)
	}
	
	method esRecuerdoNegado(unRecuerdo){
		return unRecuerdo.emocion() != alegria
	}
}

object disgusto{
	method asentarUnRecuerdo(unaPersona, unRecuerdo){
		
	}
	method esRecuerdoNegado(unRecuerdo){
		return false
	}
}

object furia{
	method asentarUnRecuerdo(unaPersona, unRecuerdo){
		
	}
	method esRecuerdoNegado(unRecuerdo){
		return false
	}
}

object temor{
	method asentarUnRecuerdo(unaPersona, unRecuerdo){
		
	}
	method esRecuerdoNegado(unRecuerdo){
		return false
	}
}

