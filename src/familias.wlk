import personas.*
import casas.*

class Familia {
	const integrantes = []
	const casa  
	
	method integrantes() = integrantes
	
	method confortPromerdio() {
		 return integrantes.sum({p => casa.confortDeLaCasa(p)} ) / integrantes.size()
	}
	
	method estaAGusto() {
		return self.confortPromerdio() > 40 and integrantes.all({i => i.seSienteAGusto()})
		}
		
	method hayUnIntegranteDeCocina() {
		return integrantes.find({integrantes.sabeCocina()})
	}
	
	method cantidadDeIntegrantes() {
		return integrantes.size()
	}
}
