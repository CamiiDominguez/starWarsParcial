import planeta.*
class Persona {
	var property edad
	const potencia = 20
	
	method inteligencia() = if (self.edad().between(20,40)) 12 else 8
	method esDestacada() = self.edad() == 25 or self.edad() == 35
	method potencia() = potencia
	method ofrecerTributo(planeta) = planeta
	method valor() = self.potencia() + self.edad()
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property tecnicas = 2
	
	override method potencia() = super() + (masaMuscular * tecnicas) 
	override method esDestacada() = super() or tecnicas > 5
	method entrenar(dias) { masaMuscular = masaMuscular + dias / 5 }
	method aprenderTecnica() { tecnicas = tecnicas + 1}
	override method edad() = super()
	override method ofrecerTributo(planeta) = planeta.construirMurallas(2) 
}

class Docente inherits Persona {
	var property cursosDictados = 0
	
	override method inteligencia() = super() + cursosDictados * 2 
	override method esDestacada() = cursosDictados > 3
	override method edad() = super()
	override method ofrecerTributo(planeta) = planeta.fundarUnMuseo() 
	override method valor() = super() + 5
}

class Soldado inherits Persona {
	var property armas = []
	
	override method potencia() = super() + armas.sum({a => a.potencia(self)})
	override method ofrecerTributo(planeta) = planeta.construirMurallas(5)
}

class Pistolete {
	var property largo
	
	method potencia(soldado) = if (soldado.edad() > 30) largo * 3 else largo * 2	
}

class Espadon {
	var property peso
	
	method potencia(soldado) = if (soldado.edad() < 40) peso / 2 else 6
}
