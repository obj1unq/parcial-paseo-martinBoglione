
class Familia {
	
	var ninios = #{}
	
	//Eje 4-
	method familiaPuedeSalirDePaseo() {
		return ninios.all({ninio => ninio.ninioPuedeSalirDePaseo()})
	}
	
	//Eje 6
	method prendasInfaltables() {
		return ninios.map({ninio => ninio.prendaMaximaCalidad()})
	}
	
	//Eje 7
	method niniosChiquitos() {
		return  ninios.filter({ninio => ninio.menorDe4()})
	}
	
	//Eje 8
	method salirDePaseo() {
		self.familiaNoPuedeSalirDePaseo()
		ninios.forEach({ninio => ninio.usarPrenda()})
	}
	
	method familiaNoPuedeSalirDePaseo() {
		if(not self.familiaPuedeSalirDePaseo()) {
			self.error("Familia no puede salir de paseo")
		}
	}
}



//Objetos usados para los talles
object xs {
}

object s {
}
object m {
	
}
object l{
	
}
object xl{
	
}