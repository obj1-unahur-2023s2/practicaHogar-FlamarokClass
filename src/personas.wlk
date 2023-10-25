
class Persona {
	var edad
	var sabeCocina 
	
	method edad() = edad 
	
	method sabeCocina() = sabeCocina
	
	method sabeCocinar() {
		sabeCocina = true
	} 
	
	method nivelDeConfortQueAporta(habitacion) {
		return habitacion.nivelDeConfort(self)
	} 
	
	method puedeEntrarA(habitacion) {
		return habitacion.puedeEntrar(self)
	}
	
	method entrarHabitacion(habitacion){
		if(self.puedeEntrarA(habitacion) and ! habitacion.estaEnLaHabitacion(self)){
		 habitacion.entrarAHabitacion(self)
		}
	}
	method seSienteAGusto()
}

class Obsesive inherits Persona{
	override method seSienteAGusto() {
			
	} 
}

class Goloses inherits Persona{
	override method seSienteAGusto() {
		
	} 
}

class Sencilles inherits Persona {
	override method seSienteAGusto() {
		
	} 
}
