import emociones.*
import Recuerdo.*

class Persona {
	var nivelDeFelicidad
	var emocionDominante
	const recuerdosDelDia = []
	const pensamientosCentrales = #{}
	const memoriaLargoPlazo = []
	
	method recuerdosDelDia() = recuerdosDelDia
	method nivelDeFelicidad() = nivelDeFelicidad
	method pensamientosCentrales() = pensamientosCentrales
	method emocionDominante() = emocionDominante
	method memoriaLargoPlazo() = memoriaLargoPlazo
	
	
	method vivirUnEvento(unaDescripcion){
		self.agregarRecuerdoDelDia(new Recuerdo(descripcion = unaDescripcion, emocion = self.emocionDominante()))
	}

	method agregarRecuerdoDelDia(unRecuerdo){
		self.recuerdosDelDia().add(unRecuerdo)
	}
	
	method agregarPensamientoCentral(unRecuerdo){
		self.pensamientosCentrales().add(unRecuerdo)
	}

	method asentarRecuerdo(unRecuerdo){
		unRecuerdo.asentarse(self)
	}
	
	method disminuirCoeficienteDeFelicidad(unPorcentaje){
		nivelDeFelicidad *= (1 - unPorcentaje / 100)
		if (nivelDeFelicidad < 1) {
			throw new Exception(message = "La felicidad no puede ser menor a 1")
		}
	}
	
	method recuerdosRecientes(){
		return self.recuerdosDelDia().reverse().take(5)
	}
	
	method pensamientosCentralesDificilesDeExplicar(){
		return self.pensamientosCentrales().filter({ unPensamiento => unPensamiento.esDificilDeExplicar() })
	}
	
	method asentarRecuerdos(unosRecuerdos){
		unosRecuerdos.map({ unRecuerdo => unRecuerdo.asentarse(self)})
	}
	
	method asentamiento(){
		self.asentarRecuerdos(self.recuerdosDelDia())
	}
	
	method asentamientoSelectivo(unaPalabra){
		self.asentarRecuerdos(self.recuerdosDelDia().filter({ unRecuerdo => unRecuerdo.contienePalabra(unaPalabra)}))
	}
	
	method recuerdoNegado(unRecuerdo){
		return self.emocionDominante().esRecuerdoNegado(unRecuerdo)
	}
	
	method esRecuerdoCentral(unRecuerdo){
		return self.pensamientosCentrales().contains(unRecuerdo)
	}
	
	method aptosLargoPlazo(){
		return self.recuerdosDelDia().filter({ unRecuerdo => not (self.esRecuerdoCentral(unRecuerdo)) and not (self.recuerdoNegado(unRecuerdo))})
	}
	
	method profundizacion(){
		self.memoriaLargoPlazo().add(self.aptosLargoPlazo())
	}
	
	
	
	
}
