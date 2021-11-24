class Plato{
	var esCarne 
	var calorias
	
	method esCarne() = esCarne
	method calorias() = calorias
	
	method esDietetico(){
		return self.calorias() < 500
	}
	
	method esPesado(){
		return self.calorias() > 500
	}
	
}