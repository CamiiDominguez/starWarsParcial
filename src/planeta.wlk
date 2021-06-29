import habitantes.*

class Planeta {
	var property habitantes = []
	var property museos 
	
	method delegacionDiplomatica() = habitantes.filter({h => h.esDestacada()})
}