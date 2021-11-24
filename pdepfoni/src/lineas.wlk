class Linea{
	var numero
	const packs = []
	const consumos = []
	var property tipoDeLinea 
	var deuda = 0
	
	method packs() = packs
	method consumos() = consumos
	
	method consumosRealizadosEntreLasFechas(unDia, otroDia){
		return consumos.filter({ unConsumo => unConsumo.estaEntreLasFechas(unDia, otroDia) })
	}
	
	method promedioConsumoEntreDias(unDia, otroDia){
		return self.promedioConsumo(self.consumosRealizadosEntreLasFechas(unDia, otroDia))
	}
	
	method promedioConsumo(unosConsumos){
		return self.totalDeConsumos(unosConsumos) / unosConsumos.size()
	}
	
	method totalDeConsumos(unosConsumos) {
		return unosConsumos.map({ unConsumo => unConsumo.consumoTotal() }).sum()
	}
	
	method gastoTotalMes(){
		const hoy = new Date()
		return self.promedioConsumoEntreDias(hoy.minusDays(30), hoy)
	}
	
	method lineaSatisfaceConsumo(unConsumo){
		return packs.any({ unPack => unPack.puedeSatisfacerConsumo(unConsumo) })
	}
	
	method registrarConsumo(unConsumo){
		tipoDeLinea.registrarConsumo(self, unConsumo)	
	}
	
	method limpiarPacks(){
		packs.removeAllSuchThat({ unPack => unPack.estaParaRetirar() })
	}
	
	method agregarConsumo(unConsumo){
		consumos.add(unConsumo)
	}
	
	method agregarDeuda(unaDeuda){
		deuda += unaDeuda
	}
	
}











