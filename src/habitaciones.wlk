import personas.*
class Habitacion {
	const ocupantes = []
	
	method ocupantes() = ocupantes 
	method numeroOcupantes() {
		return ocupantes.size()
	} 
	
	method nivelDeConfort(unaPersona) = 10
	
	method puedeEntrar(unaPersona)
	
	method salirHabitacion(unaPersona) {
		ocupantes.remove(unaPersona)
	}
	method entrarAHabitacion(unaPersona) {
		ocupantes.add(unaPersona)
	} 
	method estaEnLaHabitacion(unaPersona) {
		return ocupantes.contains(unaPersona)
	}
	
	method habitacionOcupada() {
		return ocupantes.size() >= 1
	}
	
	method masViejo() {
		return ocupantes.max({o => o.edad()})
	}
}

class Banio inherits Habitacion {
	
	override method nivelDeConfort(unaPersona) {
		 if(unaPersona.edad() <= 4){
			return super(unaPersona) + 2
		} else{ return super(unaPersona) + 4}
	}
	
	override method puedeEntrar(unaPersona) {
		return ocupantes.all({o => o.edad() <= 4})
	}
	
}

class Dormitorio inherits Habitacion {
	const personas = []
	override method nivelDeConfort(unaPersona) {
		return super(unaPersona) + (personas.size() / 10) 
	}
	
	method ocupanteDuerme(unOcupante){ // auxiliar de puedeEntrar()
		return personas.contains(unOcupante)
	}
	override method puedeEntrar(unaPersona) {
		return ocupantes.all({o => self.ocupanteDuerme(unaPersona)})
	}
}


class Cocina inherits Habitacion{
	var metrosCuadrados
	override method nivelDeConfort(unaPersona) {
		 if(unaPersona.sabeCocina()){
			return super(unaPersona) + metrosCuadrados * procentajeDeCocina.cantidad()
		}
		else{
			return super(unaPersona)
		}
	}
	
	override method puedeEntrar(unaPersona){
		return ! ocupantes.any({o => o.sabeCocina()})
	}
}

object porcentajeDeCocina { // metodo para no tener que setterar (y cambiar de ser necesario) en todas las instancias.
	method cantidad() = 1.10
}
