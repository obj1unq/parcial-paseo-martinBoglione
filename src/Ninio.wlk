
class Ninio {

	var property talle
	var property edad
	var prendas  = #{}
	
	//Eje 1	
	method menorDe4() {
		return self.edad() < 4
	}
	
	//Eje 4
	method ninioPuedeSalirDePaseo() {
		return self.cantPrendas() >= self.prendasNecesariasParaSalir() and 
			   self.nivelDeAbrigo3() and
			   self.promedioCalidadPrendas() > 8
	}
	
	method prendasNecesariasParaSalir() {
		return 5
	}
	
	method cantPrendas() {
		return prendas.size()
	}
	
	method nivelDeAbrigo3() {
		return prendas.any({prenda => prenda.nivelDeAbrigo() >= 3}) 
	}
	
	method promedioCalidadPrendas() {
		return prendas.sum({prenda => prenda.nivelDeCalidad(self)} / self.cantPrendas())
	}
	
	method prendaDeMaximaCalidad() {
		return prendas.max({prenda => prenda.nivelDeCalidad(self)})
	}
	
	//Eje 8
	method usarPrenda() {
		prendas.forEach({prenda => prenda.usar()})
	}

}

//Eje 5
class NinioProblematico inherits Ninio {
	
	var property juguete 
	
	override method ninioPuedeSalirDePaseo() {
		return super() and self.edadAcorde()
	}
	
	override method prendasNecesariasParaSalir() {
		return 4
	}
	
	method edadAcorde() {
		return self.edad() >= self.juguete().edadMinima() and self.edad() <= self.juguete().edadMaxima()
	}
}

class Juguete {
	
	var property edadMinima
	var property edadMaxima
}






















