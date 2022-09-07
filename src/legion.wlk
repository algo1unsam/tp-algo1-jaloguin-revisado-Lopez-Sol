import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	const property integrantes = []
	
	method caramelos(){
		return integrantes.sum({x => x.caramelos()})
	}
	
	method lider(){
		return integrantes.max({nene => nene.capacidadSusto()})
	}
	
	method capacidadSusto(){
		return integrantes.sum({nene => nene.capacidadSusto()})
	}
	
	method agregarIntegrantes(alguien){
		integrantes.addAll(alguien)
	}
	
	method recibirCaramelos(cant){
		self.lider().recibirCaramelos(cant)
	}
	
	method todosLosDisfraces(){
		return (integrantes.map({nene => nene.disfraces()})).flatten()
	}
	
	method normaSinRepetidos(){
		integrantes.forEach({ nene => nene.disfraces().removeAll(self.disfracesRepetidos()) })
	}
	
	method disfracesRepetidos(){
		return self.todosLosDisfraces().map({disfraz => self.todosLosDisfraces().occurrencesOf(disfraz) > 1})
	}
}

