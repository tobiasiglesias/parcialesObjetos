class Pack{
	const vencimiento
	
	method puedeSatisfacerConsumo(unConsumo){
		return self.puedeSatisfacerLlamada(unConsumo) and self.puedeSatisfacerInternet(unConsumo)
	}
	
	method puedeSatisfacerInternet(unConsumo){
		return unConsumo.noConsumioInternet()
	}
	
	method puedeSatisfacerLlamada(unConsumo){
		return unConsumo.noConsumioLlamada()
	}
	
	method producirGastoInternet(unConsumo){
		
	}
	
	method producirGastoLlamada(unConsumo){
		
	}
	
	method registrarConsumo(unConsumo){
		self.producirGastoLlamada(unConsumo)
		self.producirGastoInternet(unConsumo)
	}
	
	method estaVencido(){
		return vencimiento.estaVencido()
	}
	
	method estaAcabado(){
		return self.megasAcabados() and self.creditoAcabados()
	}
	
	method megasAcabados(){
		return true
	}
	
	method creditoAcabados(){
		return true
	}
	
	method estaParaRetirar(){
		return self.estaVencido() or self.estaAcabado()
	}
		
}

class PackCredito inherits Pack{
	var credito
	
	override method puedeSatisfacerLlamada(unConsumo){
		return credito >= unConsumo.consumoLlamada()
	}
	override method producirGastoLlamada(unConsumo){
		if(self.puedeSatisfacerLlamada(unConsumo)){
			credito -= unConsumo.consumoLlamada()
		}
	}
	
	override method creditoAcabados(){
		return credito <= 0
	}
	
}

class PackMegas inherits Pack{
	var megas
	
	override method puedeSatisfacerInternet(unConsumo){
		return megas >= unConsumo.consumoInternet()
	}
	
	override method producirGastoInternet(unConsumo){
		if(self.puedeSatisfacerInternet(unConsumo)){
			megas -= unConsumo.consumoInternet()
		}
	}
	
	override method megasAcabados(){
		return megas <= 0
	}
	
}

class PackSegundosGratis inherits Pack{
	var segundosGratis
	
	override method puedeSatisfacerLlamada(unConsumo){
		return segundosGratis >= unConsumo.segundos()
	}
	
	override method megasAcabados() = false
	override method creditoAcabados() = false
	
}

class LlamadasGratis inherits Pack{
	const dias = []
	
	override method puedeSatisfacerLlamada(unConsumo){
		return dias.any({ unDia => unDia == unConsumo.dia() })
	}
	
	override method megasAcabados() = false
	override method creditoAcabados() = false
	
	
}


class MegasLibresMasMas inherits PackMegas{
	override method megasAcabados(){
		return false
	}
	
	override method puedeSatisfacerInternet(unConsumo){
		if (megas > 0){
			return megas >= unConsumo.consumoInternet()
		} else {
			return unConsumo.megas() < 0.1
		}
	}
	
	override method producirGastoInternet(unConsumo){
		if(self.puedeSatisfacerInternet(unConsumo)){
			megas -= unConsumo.consumoInternet()
		}
	}
	
	
	
}

