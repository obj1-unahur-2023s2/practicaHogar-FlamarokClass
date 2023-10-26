
class Persona {
	var edad
	var sabeCocina 
	var habitacionDondeEsta
	
	
	method edad() = edad 
	
	method sabeCocina() = sabeCocina
	
	method sabeCocinar() {
		sabeCocina = true
	} 
	
	method habitacionDondeEsta() = habitacionDondeEsta
	
	method nivelDeConfortQueAporta(habitacion) {
		return habitacion.nivelDeConfort(self)
	} 
	
	method puedeEntrarA(habitacion) {
		return habitacion.puedeEntrar(self)
	}
	
	method entrarHabitacion(habitacion){
		if(self.puedeEntrarA(habitacion) and ! habitacion.estaEnLaHabitacion(self)){
		 habitacion.entrarAHabitacion(self)
		 habitacionDondeEsta = habitacion
		}
	}
	
	
	method seSienteAGusto(unaHabitacion, unaCasa, unaFamilia) {
		return self.puedeEntrarA(unaHabitacion)
	}
}

class Obsesive inherits Persona{
	
	override method seSienteAGusto(unaHabitacion, unaCasa, unaFamilia) {
		return true
//		super(unaHabitacion, unaCasa, unaFamilia) and unaCasa.cantidadDeOcupantes
	} 
}

class Goloses inherits Persona{
	override method seSienteAGusto(unaHabitacion, unaCasa, unaFamilia) {
		return super(unaHabitacion, unaCasa, unaFamilia) and unaFamilia.hayUnIntegranteDeCocina()
	} 
}

class Sencilles inherits Persona {
	override method seSienteAGusto(unaHabitacion, unaCasa, unaFamilia) {
		return super(unaHabitacion, unaCasa, unaFamilia) and unaHabitacion.cantidadDeHabitaciones() > unaFamilia.cantidadDeIntegrantes()
	} 
}
