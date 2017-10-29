<%@ Page Title="" Language="C#" MasterPageFile="~/model/model_op.Master" AutoEventWireup="true" CodeBehind="moedas.aspx.cs" Inherits="prjCambio.moedas" %>
	<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
		<link href="css/style_moedas.css" rel="stylesheet" type="text/css" />
	</asp:Content>
	<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
		<section class="titulo_pages container-fluid">
			<article>
				<h1 class="titulo">Moedas</h1>
			</article>
		</section>     
       
		<section class="conteudo container-fluid">		
        <div class="par">        
        	    <article class="container">
				    <div class="bloco row">                        
					    <figure class="col-md-6 imagem">
						    <img class="imagem_img" src="imagens/real.png">
					    </figure>                        
                        <article class="col-md-5 texto_white">
                            <p> O<font class="destaque"> Real</font>, símbolo <font class="destaque">R$</font>, é a moeda corrente oficial do Brasil. Após sucessivas trocas monetárias, o Brasil adotou o real em 1º
						        de julho de 1994. <br> O real é a 16º moeda mais negociada no mundo, é a segunda mais negociada na América Latina e
						        quarta mais negociada nas Américas.
					        </p>
                        </article>
					    
				    </div>
			    </article>            
                </div>     
				<article class="container">
					<div class="bloco row">		
                        <span class="col-md-1"></span>	
                        <article class="col-md-5 col-12">
                            <article>
                                <p class="texto_black">O
							        <font class="destaque_2">Dólar</font> estadunidense é a moeda emitida pelos Estados Unidos e utilizada no mundo inteiro. Atualmente, a sua
							        expedição é controlada pela Reserva Federal dos Estados Unidos. <br> O sinal
							        <font class="destaque_2">$</font> foi o resultado de uma evolução, no fim do século XVIII, da sigla "ps", do peso. O p e s, passaram a ser
							        escritos um sobre o outro, dando origem ao $.
						        </p>                        
                            </article>                            
                        </article>   
						<figure class="col-md-5 imagem_2 col-12">
						    <img class="imagem_img" src="imagens/dolar_1.png">
					    </figure>                        
					</div>
			</article>
            <div class="par">			
			<article class="container">
				<div class="bloco row">                
					<figure class="col-md-6 imagem col-12">
						    <img class="imagem_img" src="imagens/euro.png">
					    </figure>
					<p class="texto_white col-md-5 col-12"> O
						<font class="destaque">Euro</font> é a moeda oficial da zona Euro, a qual é constituída por 19 dos 28 estados-membro da União Europeia.
						<br>Esta moeda começou a circular a partir de 1 de janeiro de 2002. O seu símbolo é representado por
						<font class="destaque">€</font>.

					</p>
				</div>
			</article>
			</div>
				<article class="container">
					<div class="bloco row">		    
                        <span class="col-md-1"></span>                    
						<p class="texto_black col-md-5 col-12">O
							<font class="destaque_2">Peso Argentino</font>, símbolo
							<font class="destaque_2">$</font>, é a moeda oficial da Argentina, foi a moeda corrente da Argentina no período de 1881 até 1985.<br> Em 1969,
							o Banco Central argentino (BCRA) decidiu emitir novas cédulas, com um visual mais moderno e seguro, e reformou a simbologia
							da moeda.
						</p>                        
						<figure class="col-md-5 imagem_2 col-12">
						    <img class="imagem_img" src="imagens/peso.png">
					    </figure>
					</div>
				</article>		
		</section>
	</asp:Content>