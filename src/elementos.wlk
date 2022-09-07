object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var property longitud = 2

	method nivelSusto() {
		return 5*longitud
	}

	method cambiarLongitud(cantPelos){
		longitud += cantPelos
	}

}

object mascaraDracula {
	const tamanio = 2

	method nivelSusto() {
		return tamanio * 2
	}
}

object mascaraFrankenstein {
	
	method nivelSusto() {
		return 22
	}
}

object mascaraPolitico {
	var property promesas = 10
	
	method nivelSusto() {
		return promesas
	}
}