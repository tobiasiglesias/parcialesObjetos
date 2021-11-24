class Consumo{
	const segundos
	const megas
	const fecha = new Date()
	
	method megas() = megas
	method segundos() = segundos
	method fecha() = fecha
	
	method calcularConsumoLlamada(unosSegundos){
		if(unosSegundos <= 30){
			return 1 + (unosSegundos - 30) * 0.05
		} else {
			return 1
		}
	}
	
	method calcularConsumoInternet(unosMegas){
		return unosMegas * 0.1
	}
	
	method consumoInternet(){
		return self.calcularConsumoInternet(self.megas())
	}
	
	method consumoLlamada(){
		return self.calcularConsumoLlamada(self.segundos())
	}
	
	method consumoTotal(){
		return self.consumoInternet() + self.consumoLlamada()
	}
	
	method dia(){
		return fecha.dayOfWeek()
	}
	
	method estaEntreLasFechas(unDia, otroDia){
		return fecha.between(unDia, otroDia)
	}
	
	method noConsumioInternet(){
		return megas == 0
	}
	
	method noConsumioLlamada(){
		return segundos == 0
	}
	
	
}