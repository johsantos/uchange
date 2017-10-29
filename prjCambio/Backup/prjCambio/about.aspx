<%@ Page Title="" Language="C#" MasterPageFile="~/model/model_op.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="prjCambio.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="css/style_about.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="titulo_pages">
		<article>
		    <h1 class="titulo">Sobre Nós</h1>
		</article>
     </section>    
    <section class="row">
	<article class="col-md-4">
		<figure class="icon_sobre">
			<img src="imagens/comeco_2.png" alt="comeco"><br />
			<figcaption><font class="destaque">Janeiro 2013</font><br />
            A ideia surgiu para o negócio e a empresa foi criada
            </figcaption>
		</figure>
		<figure class="icon_sobre">
			<img src="imagens/premio_1.png" alt="premio"><br />
			<figcaption ><font class="destaque">Março 2015</font> <br />
             uChange ganha o prêmio de melhor casa de câmbio online</figcaption>
		</figure class="icon_sobre">
		<figure class="icon_sobre">
			<img src="imagens/novo_1.png" alt="novo"><br />
			<figcaption><font class="destaque">Outubro 2017</font> <br />
             A empresa amplia, inserindo novos integrantes a equipe
             </figcaption>
		</figure>
	</article>
    <span class="col-md-1"></span>
	<article class="col-md-6 texto">
		<h1>uChange</h1>
        <p>A uChange é uma correspondente do Banco Etecaf no Brasil, uma das maiores no mercado de câmbio, atuando desde 2013.
        Temos como principal objetivo proporcionar aos nossos clientes comodidade, praticidade, transparência e segurança. </p>
		<p>O resultado desse comprometimento em fazer o melhor é o mercado crescente da empresa em todo o Brasil, o que reflete em clientes satisfeitos e fieis.
        Pensou em fazer cotações? Entre em contato com a uChange, sua moeda no exterior.</p>
	</article>	
</section>

</asp:Content>
