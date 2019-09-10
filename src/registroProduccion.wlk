object registroProduccion {
	var produccionPorDia = [53,18,49,62,33]	
	
	method cambiarProduccionPorDia(nuevaLista) {
		produccionPorDia = nuevaLista
	}
	//esto no es lo mejor pero sirve para practicar any
	method algunDiaSeProdujo(cantidad){
		return produccionPorDia.any({pd=>pd==cantidad})
	}
	// esta es la posta
	method algunDiaSeProdujoOk(cantidad){
		return produccionPorDia.contains(cantidad)
	}
	method maximoValorDeProduccion(){
		return produccionPorDia.max()
	}
	// forma corta
	method valoresDeProduccionPares(){
		return produccionPorDia.filter({pd=>pd.even()})
	}
	//forma larga
	method valoresDeProduccionPares2(){
		return produccionPorDia.filter({pd=>pd % 2==0})
	}
	method produccionEsAcotada(n1,n2){
		return produccionPorDia.all({pd=>pd.between(n1,n2)})
	}
	method produccionesSuperioresA(cuanto){
		return produccionPorDia.filter({pd=>pd>cuanto})
	}
	method produccionesSumando(n){
		return produccionPorDia.map({pd=>pd+n})
	}
	method totalProducido()	{
		return produccionPorDia.sum()
	}
	method ultimoValorDeProduccion(){
		return produccionPorDia.last()
	}
	method cantidadProduccionesMayorALaPrimera(){
		var dia1= produccionPorDia.first()
		return produccionPorDia.count({pd=>pd>dia1})
		
	}
	
}
