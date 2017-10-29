using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

namespace prjCambio
{
    public partial class index : System.Web.UI.Page
    {
        #region Variaveis publicas
        XmlDocument valores = new XmlDocument();
        XmlDocument xml_valores = new XmlDocument();
        double valorDigitado = 0;
        double valorConversao = 0;
        static bool inverteu = false;
        #endregion

        #region Carregar Arquivos externo
            public void CarregarXml()
            {        
                
                valores.Load(Request.PhysicalApplicationPath + @"\xmls\moedas_nomes.xml");
                xml_valores.Load(Request.PhysicalApplicationPath + @"\xmls\moedas.xml");
               
            
            }
        #endregion

        #region Alimentar Objetos
        public void AlimentarDDL()
        {
            XmlNodeList dadosXml = valores.GetElementsByTagName("moeda");
            for (int i = 0; i < 4; i++)
            {
                ddl_origem.Items.Add(new ListItem(dadosXml[i]["nm_moeda"].InnerText, dadosXml[i]["cd"].InnerText));              
                ddl_destino.Items.Add(new ListItem(dadosXml[i]["nm_moeda"].InnerText, dadosXml[i]["cd"].InnerText));
                

            }
            ddl_origem.Items[1].Attributes.CssStyle.Add("display", "none");
            ddl_destino.Items[0].Attributes.CssStyle.Add("display", "none");
            ddl_destino.Items.Insert(0, ddl_destino.Items[1]);
            ddl_destino.Items.RemoveAt(2);
        }
        #endregion

        #region Validações

        public bool Existencia_Tipo(string campo)
        {
            if (campo == "")
                return true;            
            else
            {
                try
                {
                    valorDigitado = double.Parse(campo);
                }
                catch
                {
                    return true;
                }
            }
            if (valorDigitado <= 0)
                return true;
            else
                return false;

        }
        #endregion

        #region Conversão

        public void Converter(DropDownList destino, DropDownList origem)
        {
            CarregarXml();
            XmlNodeList xml_Node_Secudario = xml_valores.GetElementsByTagName("moeda-"+ddl_origem.SelectedValue);
            double valorCotacao = 0;
            string sg_origem, sg_destino = "";

                    
            valorCotacao = double.Parse(xml_Node_Secudario[0]["vl_moeda-" + destino.SelectedValue].InnerText);
            valorConversao = Math.Round(valorDigitado * valorCotacao, 2);

            sg_origem = origem.SelectedItem.Text;
            sg_destino = destino.SelectedItem.Text;            
            lbl_origem.Text = valorDigitado.ToString() + "  " + sg_origem.Substring(0, 3) + " &#8649; ";
            lbl_resultado.Text = valorConversao.ToString();        
            lbl_destino.Text = " " + sg_destino.Substring(0, 3);
            moeda_destino.Text = destino.SelectedItem.Text.Substring(5);
            moeda_origem.Text = origem.SelectedItem.Text.Substring(5);
            inverteu = false;
        }

        public void Converter_Inverso(DropDownList destino, DropDownList origem)
        {
            CarregarXml();
            XmlNodeList xml_Node_Secudario = xml_valores.GetElementsByTagName("moeda-" + ddl_origem.SelectedValue);
            double valorCotacao = 0;
            string sg_origem, sg_destino = "";

            valorCotacao = double.Parse(xml_Node_Secudario[0]["vl_moeda-" + destino.SelectedValue].InnerText);
            valorConversao = Math.Round(valorDigitado / valorCotacao, 2);

            sg_origem = origem.SelectedItem.Text;
            sg_destino = destino.SelectedItem.Text;
            lbl_origem.Text = valorDigitado.ToString() + "  " + sg_destino.Substring(0, 3) + " &#8649; ";
            lbl_resultado.Text = valorConversao.ToString();
            lbl_destino.Text = " " + sg_origem.Substring(0, 3);
            moeda_destino.Text = origem.SelectedItem.Text.Substring(5);
            moeda_origem.Text = destino.SelectedItem.Text.Substring(5);
            inverteu = true;
        }
        #endregion
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarXml();
                AlimentarDDL();
                inverteu = false;
            }
        }
        protected void btn_converter_Click(object sender, ImageClickEventArgs e)
        {
            lbl_resultado.Text = "";
            if (Existencia_Tipo(txt_valor.Text))
            {
                var sg_origem = ddl_origem.SelectedItem.Text;
                var sg_destino = ddl_destino.SelectedItem.Text;
                lbl_origem.Text = "0   " + sg_origem.Substring(0, 3) + " &#8649; ";
                lbl_resultado.Text = "0";
                lbl_destino.Text = " " + sg_destino.Substring(0, 3);
                moeda_destino.Text = ddl_destino.SelectedItem.Text.Substring(5);
                moeda_origem.Text = ddl_origem.SelectedItem.Text.Substring(5);
                
                return;
            }
            Converter(ddl_destino, ddl_origem);
        }

        protected void btn_trocar_Click(object sender, ImageClickEventArgs e)
        {      
            lbl_resultado.Text = "";

            if (Existencia_Tipo(txt_valor.Text))
            {
                var sg_origem = ddl_origem.SelectedItem.Text;
                var sg_destino = ddl_destino.SelectedItem.Text;
                lbl_origem.Text = "0   " + sg_origem.Substring(0, 3) + " &#8649; ";
                lbl_resultado.Text = "0";
                lbl_destino.Text = " " + sg_destino.Substring(0, 3);
                moeda_destino.Text = ddl_destino.SelectedItem.Text.Substring(5);
                moeda_origem.Text = ddl_origem.SelectedItem.Text.Substring(5);
                return;
            }

            if (!inverteu)
                Converter_Inverso(ddl_destino, ddl_origem);
            else
                Converter(ddl_destino, ddl_origem);
            
            var itemOrigem = ddl_origem.SelectedItem;
            var itemDestino = ddl_destino.SelectedItem;

            for (int i = 0; i < ddl_origem.Items.Count; i++)
            {
                if (ddl_origem.Items[i].Selected)
                {
                    ddl_origem.Items.Insert(0, itemDestino);
                    ddl_origem.Items.RemoveAt(i + 1);
                }
                if (ddl_destino.Items[i].Selected)
                {
                    ddl_destino.Items.Insert(0, itemOrigem);
                    ddl_destino.Items.RemoveAt(i + 1);
                }
            }
           
        }
    }       
}