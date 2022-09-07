import chicos.*
import legion.*
import elementos.*

object mirca {
	var property tolerancia = 22
	
	method serAsustadoPor(alguien){
		alguien.recibirCaramelos(self.caramelosAEntregar(alguien))
		tolerancia -= 1
	}
	
	method caramelosAEntregar(alguien){
		if(tolerancia < alguien.capacidadSusto()){
			return alguien.capacidadSusto() - tolerancia
		} else { return 0 }
	}
}
