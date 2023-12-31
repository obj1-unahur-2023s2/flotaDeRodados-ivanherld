class Corsa {
	var property color
	
	method capacidad() = 4
	method velmax() = 150
	method peso() = 1300
	
	
}

class Kwid {
	var property conTanqueAdicional = false
	
	method capacidad() = if(conTanqueAdicional){3}else{4}
	method velmax() =  if(conTanqueAdicional){120}else{110}
	method peso() = if(conTanqueAdicional){1350}else{1200}
	method color() = "azul"
	
}

object traffic{
	var property interior
	var property motor
	
	method configurar(unInterior, unMotor){
		interior = unInterior
		motor = unMotor
	}
	
	method capacidad() = interior.capacidad()
	
	method velocidad() = motor.velocidad() 
	
	method peso() = 4000 + motor.peso() + interior.peso()
	
	method color() = "blanco"
}

object motorBataton {
	method peso() = 500
	
	method velocidad()= 80
	
}

object motorPulenta {
	method peso() = 800
	method velocidad() = 130
}

object interiorComodo {
	method capacidad() = 5
	method peso () = 1000
	
}

object interiorPopular {
	method capacidad() = 12
	method peso () = 1000
}

class AutoEspecial {
	var property capacidad 
	var property velocidad
	var property peso 
	var property color
}