import habitantes.*

class Planeta {
	var property habitantes = []
	var property museos 
	var property longitudDeMurallas
	
	method delegacionDiplomatica() = habitantes.filter({h => h.esDestacada()})
	method valorInicialDeDefensa() = habitantes.filter({h => h.potencia() >= 30}).sum()
	method esCulto() = museos >= 2 and habitantes.all({h => h.inteligencia() >= 10})
	method potenciaReal() = habitantes.map({h => h.potencia()}).sum()
	method construirMurallas() {}
	method fundarUnMuseo() { museos = museos + 1}  
}