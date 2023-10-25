import personas.*
import casas.*

class Familia {
	const integrantes = []
	const casa  
	
	method integrantes() = integrantes
	
	method confortPromerdio() {
		 return integrantes.sum({p => casa.confortDeLaCasa(p)} ) / integrantes.size()
	}
}
