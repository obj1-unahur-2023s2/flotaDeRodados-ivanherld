import rodados.*

class Dependencia {
	var property cantDeEmpl=0
	const rodados=[]
	
	method agregarAFlota(unRodado){
		rodados.add(unRodado)
	}
	
	method quitarDeFlota(unRodado){
		rodados.remove(unRodado)
	}
	
	method pesoTotalFlota(){
		return rodados.sum({rodado => rodado.peso()})
		
	}
	
	method todosSuperanXVelocidad(velocidad){
		return rodados.all({r=> r.velocidad() >= velocidad})
	}
	
	method estaEquilibrada() {
		return rodados.size() >= 3 && self.todosSuperanXVelocidad(100)
	}
	
	method capacidadTotalEnColor(color){
		return (self.rodadosDeUnColor(color)).sum({r=>r.capacidad()})
	}
	
	method rodadosDeUnColor(unColor) {
		return rodados.filter({r=>r.color()== unColor})
	}
	
	method colorDeRodadoMasRapido(){
		return self.rodadoMasRapido().color()
	}
	
	method rodadoMasRapido() {
		if(rodados.isEmpty()){
			self.error("No se puede calcular el maximo")}
		return rodados.max({r => r.velmax()})
		}
		
	
	
	method capacidadTotalDeLaFlota() {
		return rodados.sum({r => r.capacidad()})
	}
	
	method capacidadFaltante() {
		return 0.max(self.cantDeEmpl() - self.capacidadTotalDeLaFlota())
	}
	
	method esGrande(){
		return cantDeEmpl >= 40 and rodados.size() >= 5
	}
}
