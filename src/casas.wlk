import habitaciones.*
import familias.*


class Casa {
	const habitaciones = []
	
	
	method habitacionesOcupadas() {
		return habitaciones.filter({h => h.habitacionOcupada()})		
	}
	
	method resposableDeLaCasa() {
		return habitaciones.max({h => h.masViejo().edad()})
	}
	
	method confortDeLaCasa(unaPersona) {
		return habitaciones.sum({h => h.nivelDeConfort(unaPersona)})
	}
	
}
