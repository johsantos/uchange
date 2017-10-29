<%@ Page Title="" Language="C#" MasterPageFile="~/model/model_op.Master" AutoEventWireup="true" CodeBehind="contato.aspx.cs" Inherits="prjCambio.contato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style_contato.css" rel="stylesheet" type="text/css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="titulo_pages">
			    <article>
				    <h1 class="titulo">Contato</h1>
			    </article>
     </section>     
<main class="container-fluid">
     <section class="conteudo row">
        <article class="col-sm-7 texto">
            <article class="textos">
                <p>Sinta-se à vontade para nos enviar uma mensagem!<br /> Estamos prontos para lhe ouvir e ajudar no que for possível.</p>
            </article>            
            <article class="redes_sociais row">
                <a href="#"><figure class="col">
                    <img src="imagens/face.png" alt="face">
                 </figure></a>
	            <a href="#"><figure class="col">
                    <img src="imagens/twitter.png" alt="">
                </figure></a>
            	<a href="#"><figure class="col">
                    <img src="imagens/lk.png" alt="">
                </figure></a>
	           <a href="#"><figure class="col">
                    <img src="imagens/google.png" alt="">
               </figure></a>
            </article>
        </article>
        <article class="col-sm-5 text-center formulario">
            <asp:TextBox ID="txt_nome" required CssClass="campo_normal" placeholder="Nome" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txt_email" required CssClass="campo_normal" placeholder="E-mail" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txt_telefone" CssClass="campo_normal" placeholder="Telefone" runat="server"></asp:TextBox><br />            
            <textarea class="txt_area" required placeholder="Mensagem"></textarea><br />
            <button class="btn enviar">Enviar</button>
        </article>
       
       
     </section>
</main>


</asp:Content>
