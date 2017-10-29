
function esconderOption(select){
	"use strict";
	for(var i = 0; i < 4; i++){
		select.options[i].style.display = "block";	
	}
					
}
function mudarOrigem() {	
	"use strict";		
	var Origem = $(".origem option:selected").val();
	var cd = [  "real", "dolar", "euro", "argentino" ];
	var options_destino = document.getElementById("ContentPlaceHolder1_ddl_destino");
	
	
	for(var c = 0; c<4; c++){
		if(Origem === cd[c]){		
			switch(c)
			{					
				case 0:	
					$("#ContentPlaceHolder1_moeda_origem").text("Real Brasileiro");			
					esconderOption(options_destino);						
					options_destino.options[0].style.display = "none";					
				break;					
				case 1:									
					$("#ContentPlaceHolder1_moeda_origem").text("Dolar Americano");		
					esconderOption(options_destino);								
					options_destino.options[1].style.display = "none";					
					
				break;					
				case 2:									
					$("#ContentPlaceHolder1_moeda_origem").text("Euro");
					esconderOption(options_destino);						
					options_destino.options[2].style.display = "none";
				break;					
				case 3:									
					$("#ContentPlaceHolder1_moeda_origem").text("Peso Argentino");
					esconderOption(options_destino);									
					options_destino.options[3].style.display = "none";
				break;
			}
			return;
		}	
	}
	
}
function mudarDestino(){	
	"use strict";
	var Nomes = [  "dolar", "euro", "argentino", "real" ];		
	var Destino = $(".destino option:selected").val();	
	var options_origem = document.getElementById("ContentPlaceHolder1_ddl_origem");
	for(var i = 0; i < 4; i++){
		if(Destino === Nomes[i]){		
			switch(i){
				case 0:						
					$("#ContentPlaceHolder1_moeda_destino").text("Dolar Americano");
					esconderOption(options_origem);		
					options_origem.options[0].style.display = "none";					
				break;
					
				case 1:						
					$("#ContentPlaceHolder1_moeda_destino").text("Euro");
					esconderOption(options_origem);	
					options_origem.options[2].style.display = "none";					
				break;
					
				case 2:						
					$("#ContentPlaceHolder1_moeda_destino").text("Peso Argentino");
					esconderOption(options_origem);	
					options_origem.options[3].style.display = "none";					
				break;
					
				case 3:						
					$("#ContentPlaceHolder1_moeda_destino").text("Real Brasileiro");
					esconderOption(options_origem);	
					options_origem.options[1].style.display = "none";					
				break;
			}
			return;
		}	
	}
}
