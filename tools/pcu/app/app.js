if (window.history.replaceState) {
    window.history.replaceState(null, null, window.location.href);
}



function mostrarForm() {
    var formulario  = document.getElementById('form-venta');
    var mostrar =  document.getElementById('vender');
    mostrar.onclick = formulario.style.display = 'initial';
}


function ajax(metodo, archivo, parametros, FormData){
	var xhttp = new XMLHttpRequest();
	xhttp.open(metodo, archivo, 1);
	if(metodo == "POST"){
		/*
			Contruir parÃ¡metros */
		var send_parameters = "";
		for(var i in parametros){
			send_parameters += i + '=' + encodeURIComponent(parametros[i]) + '&';
		}
		/*
			Enviar */
		if(FormData){
			xhttp.setRequestHeader('X-Requested-With','XMLHttpRequest');
		}else{
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		}
		xhttp.send(FormData || send_parameters);
	}else
		xhttp.send();
	return xhttp;
}

