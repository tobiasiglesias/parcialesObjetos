class Recuerdo {
	
	const property descripcion
	const property fecha = new Date()
	const property emocion
	
	method asentarse(unaPersona){
		self.emocion().asentarUnRecuerdo(unaPersona, self)
	}
	
	method esDificilDeExplicar(){
		return self.descripcion().words().size() > 10
	}
	
	method contienePalabra(unaPalabra){
		return self.descripcion().words().contains(unaPalabra)
	}
	
	
}