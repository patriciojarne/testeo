/** First Wollok example */
object gerente {
	var neto = 1000
	var presentismo=0
	var sueldo=0
	method presentismo(){
		return presentismo
	}
	method presentismo(faltas) {
		presentismo = faltas
	}
	method neto() {return neto}
	method sueldo(bono_p, bono_r){
		sueldo=neto+bono_p.bono(self)+bono_r.bono(self) 
	}
	
}
object cadete {
	var neto = 1500
	var presentismo=0
	var sueldo=0
	method presentismo(){
		return presentismo
	}
	method presentismo(faltas) {
		presentismo = faltas
	}
	method neto() {return neto}
	method sueldo(bono_p, bono_r){
		sueldo=neto+bono_p.bono(self)+bono_r.bono(self) 
	}
	
}
object bono_p1{
	var bono=0
	method bono(trabajador) {
	bono=0
		if(trabajador.presentismo()==0){
			bono = 100
		} else if(trabajador.presentismo()==1){
			bono = 50
		}
		return bono
	}
}

object bono_p2{
	var bono=0
	method bono(trabajador){
		return bono
	}
}

object bono_r1{
	var bono=0
	method bono(trabajador){
		bono = trabajador.neto()/10
		return bono
	}
}

object bono_r2{
	var bono=80
	method bono(trabajador){
		return bono
	}
}
object bono_r3{
	var bono=0	
	method bono(trabajador){
		return bono
	}
}