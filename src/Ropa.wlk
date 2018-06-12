
class Ropa {

	var property talle
	var property desgaste
	var property abrigo
	
	
	method talleCoincide(unNinio) {
		return if(self.talle() == unNinio.talle()) {
			 8
		}else 0
	}
	
	method nivelDeComodidad(unNinio) {
		return  self.talleCoincide(unNinio) - self.desgaste().min(3)
	}
	
	//Eje 3
	method nivelDeAbrigo() {
		return abrigo
	}

	//Eje 4
	method nivelDeCalidad(unNinio) {
		return self.nivelDeComodidad(unNinio) + self.nivelDeAbrigo()
	}
	

	//Eje 8
	method usar() {
		 desgaste += 1
	}
	
	
}


class RopaAPares inherits Ropa {
	
	var property parIzquierdo
	var property parDerecho
	
	method nivelDeDesgaste() {
		return  (self.parDerecho().desgaste() + self.parIzquierdo().desgaste()) / 2
	}
	
	override method nivelDeComodidad(unNinio) {
		return self.talleCoincide(unNinio) - self.nivelDeDesgaste() - if(unNinio.menorDe4()) {1} else {0}
	}
	

	//Eje 2	
	method intercambiarParesDerechos(parA,parB) {
		self.intercambioNoEsPosible(parA,parB)
		parA.parDerecho(parB.parDerecho()) 
		parB.parDerecho(parA.parDerecho())
		
	}
	
	method intercambioNoEsPosible(parA,parB) {
		 if(parA.talle() != parB.talle()) {
			self.error("No se puede hacer el intercambio")
		}
	}
	
	//Eje 3 
	override method nivelDeAbrigo() {
		return parIzquierdo.nivelDeAbrigo() + parDerecho.nivelDeAbrigo()
	}
}

class ParIzquierdo inherits Ropa {
	
	//Eje 8
	override method usar() {
		desgaste += 0.8
	}
}

class ParDerecho inherits Ropa{
	
	//Eje 8
	override method usar() {
		desgaste += 1.20
	}
}


class RopaLiviana inherits Ropa {
	
	override method nivelDeComodidad(unNinio) {
		return super(unNinio) + 2
	}	
	
	//Eje 3
	override method nivelDeAbrigo() {
		return valorAbrigo.valor()
	}
}

object valorAbrigo {
	
	var property valor
}

class RopaPesada inherits Ropa {
	
	
}



