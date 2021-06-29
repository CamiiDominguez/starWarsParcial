import planeta.*
class Persona {
	var property edad
	const potencia = 20
	
	method inteligencia() = if (self.edad().between(20,40)) 12 else 8
	method esDestacada() = self.edad() == 25 or self.edad() == 35
	
}

class Atleta inherits Persona {
	var property masaMuscular = 4
	var property tecnicas = 2
	
	method potencia() = self.potencia() + (masaMuscular * tecnicas) 
	override method esDestacada() = super() or tecnicas > 5
	method entrenar(dias) { masaMuscular =+ dias / 5 }
	method aprenderTecnica() { tecnicas =+ 1}
}

class Docente inherits Persona {
	var property cursosDictados = 0
	
	override method inteligencia() = super() + cursosDictados * 2 
	override method esDestacada() = cursosDictados > 3
}
