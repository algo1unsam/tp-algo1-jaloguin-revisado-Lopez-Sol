import elementos.*

object macaria {
	var property nivelIra = 10
	var property disfraces = []
	var property caramelos = 0


	method enojar(puntos){
		nivelIra += puntos 
	}

	method recibirCaramelos(cant){
		caramelos += cant.div(4/3)
	}

	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}

	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}

	method capacidadSusto(){
		return nivelIra + disfraces.sum({distraz => distraz.nivelSusto()})
	}
	
	method dejarDeUsarMenosEfectivo(){
		disfraces.remove(disfraces.min({disfraz => disfraz.nivelSusto()}))
	}
}

object pancracio {
	var cantDeU = 4
	var property caramelos = 0
	var property disfraces = [mascaraDracula]

	method capacidadSusto(){
		return cantDeU + disfraces.first().nivelSusto()
	}

	method quitarDisfraz(disfraz){
		cantDeU += 2
	}
	
	method disfrazar(disfraz){
		disfraces = [disfraz]
	}

	method recibirCaramelos(cant){
		caramelos += cant
	}
}

// El chico inventado .

object pedro {
	var property disfraces = []
	var property caramelos = 0

	method recibirCaramelos(cant){
		
	}

	method quitarDisfraz(disfraz){
		disfraces.remove(disfraz)
	}

	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}

	method capacidadSusto(){
		return caramelos * disfraces.size()
	}
	
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}

}

object barrio{
	var integrantes = []
	
	method chicos(nuevosChicos){
		integrantes = (nuevosChicos.withoutDuplicates())
	}
	
	method chicosConMasCaramelos(cant){
		integrantes.sortBy({ n1, n2 => n1.caramelos() > n2.caramelos()})
		return integrantes.take(cant)
	}
	
	method algunoMuyAsustador(){
		return integrantes.any({nene => nene.capacidadSusto() > 42})
	}
}
