object vegetariano{
	method puedeComer(unPlato){
		return not unPlato.esCarne()
	}
}

object dietetico{
	method puedeComer(unPlato){
		return unPlato.esDietetico()
	}
}

class Alternado{
	var alternaciones = -1
	method puedeComer(unPlato){
		alternaciones += 1
		return alternaciones % 2 == 0
	}
}

class CriterioMixto{
	const criteriosComida = #{}
	method criteriosComida() = criteriosComida
	
	method puedeComer(unPlato){
		return self.criteriosComida().all({ unCriterio => unCriterio.puedeComer(unPlato) })
	} 
}
