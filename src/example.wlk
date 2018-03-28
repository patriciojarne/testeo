/** First Wollok example */
object pepe {
	var presentismo=0
	method presentismo(){
		return presentismo
	}
	method presentismo(faltas) {
		presentismo = faltas
	}
	method sueldo(categoria, bono_p, bono_r){
		return categoria.neto()+bono_p.bono(self)+bono_r.bono(categoria.neto())
	}
}
	
object gerente{
	var neto = 1000
	method neto() {return neto}	
}
object cadete{
	var neto = 1500
	method neto() {return neto}
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