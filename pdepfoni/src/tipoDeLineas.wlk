class LaVerdaderaLinea{
	method registrarConsumoDeVerdad(unaLinea, unConsumo){
		unaLinea.packs().find({ unPack => unPack.puedeSatisfacerConsumo(unConsumo) }).registrarConsumo(unConsumo)
		unaLinea.agregarConsumo(unConsumo)
	}
}


object lineaComun inherits LaVerdaderaLinea{
	
	method registrarConsumo(unaLinea, unConsumo){
		if(unaLinea.lineaSatisfaceConsumo(unConsumo)){
			self.registrarConsumoDeVerdad(unaLinea, unConsumo)
		} else {
			throw new Exception(message = "no le alcanzan los packs! D:")
		}
	}
}

object lineaBlack inherits LaVerdaderaLinea{
	method registrarConsumo(unaLinea, unConsumo){
		if(unaLinea.lineaSatisfaceConsumo(unConsumo)){
			self.registrarConsumoDeVerdad(unaLinea, unConsumo)
		} else {
			unaLinea.agregarDeuda(unConsumo.consumoTotal())
		}
	}
}

object lineaPlatinum inherits LaVerdaderaLinea{
	method registrarConsumo(unaLinea, unConsumo){
		unaLinea.agregarConsumo(unConsumo)
	}
}

