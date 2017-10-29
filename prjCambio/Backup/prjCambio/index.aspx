<%@ Page Title="" Language="C#" MasterPageFile="~/model/model_op.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="prjCambio.index" %>
    <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="css/style_conversor.css" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
        <link href="css/style_index.css" rel="Stylesheet" />
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main onload="mudarDestino() mudarOrigem()">
            <section class="banner container-fluid">
                <article class="slogan">
                    <h1>O método mais <font>rápido</font> e <font>fácil</font> para trocar o seu dinheiro</h1>
                </article>
                <div>
                    <article class=" conversor_zone">
                        <div class="conversor">
                            <div class="division">
                                <asp:DropDownList ID="ddl_origem" onChange="mudarOrigem()" CssClass="selects_custom origem" runat="server">
                                </asp:DropDownList>
                                <asp:TextBox ID="txt_valor" required placeholder="R$ 1" CssClass="txt" runat="server"></asp:TextBox>
                            </div>
                            <div class="division_meio">
                                <asp:ImageButton ID="btn_trocar" ImageUrl="~/imagens/mudar.png" Width="35px" runat="server" onclick="btn_trocar_Click" />
                            </div>
                            <div class="division">
                                <asp:DropDownList ID="ddl_destino" onChange="mudarDestino()" CssClass="selects_custom destino" runat="server"></asp:DropDownList>
                                <asp:ImageButton ID="btn_converter" CssClass="converter" ImageUrl="~/imagens/seta.png" runat="server" onclick="btn_converter_Click"></asp:ImageButton>
                            </div>
                        </div>
                        <div class="result_camp">
                            <asp:Label ID="lbl_origem" CssClass="textos_origem_destino origem_result" runat="server" Text="1 BRL   &#8649;  "></asp:Label>
                            <span class="resultado"><asp:Label ID="lbl_resultado" CssClass="result" runat="server" Text="0,32 "></asp:Label></span>
                            <asp:Label ID="lbl_destino" CssClass="textos_origem_destino destino_result" runat="server" Text="USD"></asp:Label> <br />
                            <div class="add_inform">
                                <asp:Label ID="moeda_origem" runat="server" Text="Real Brasileiro"></asp:Label>
                               <i class="fa fa-arrows-h espacamento" aria-hidden="true"></i>
                                <asp:Label ID="moeda_destino" runat="server" Text="Dolar dos EUA"></asp:Label>                                              
                            </div>
                        </div>
                    </article>
                </div>
            </section>
            <section class="conteudo container-fluid">
                <h1 class="titulo_conteudo">Melhores condições, cotações e taxas de câmbio</h1>
                <article class="row">
                    <article class="container icons">
                        <div class="row">
                            <figure class="icon_conteudo col-md-6 text-center">
                                <img src="imagens/icon_24_horas_1.png" />
                                <figcaption>Cotação 100% em tempo real on-line, 7 dias por semana, 24 horas por dia!</figcaption>
                            </figure>
                            <figure class="icon_conteudo col-md-6 text-center">
                                <img src="imagens/Icon_negociacao.png" />
                                <figcaption>Cotação, Compra e Pagamento Diretamente para Casa de Câmbio da Instituição Financeira Escolhida!</figcaption>
                            </figure>
                        </div>
                    </article>
                </article>
            </section>
        </main>
        <script src="js/troca_moeda.js"></script>
    </asp:Content>