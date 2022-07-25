using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autos
{
    public partial class altaautos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            fuFoto.SaveAs(Server.MapPath(".") + "/" + this.fuFoto.FileName);
            this.DSAutos.InsertParameters["patente"].DefaultValue = this.txtPatente.Text;
            this.DSAutos.InsertParameters["propietario"].DefaultValue = this.txtPropietario.Text;
            this.DSAutos.InsertParameters["precio"].DefaultValue = this.txtPrecio.Text;
            this.DSAutos.InsertParameters["modelo"].DefaultValue = this.txtModelo.Text;
            this.DSAutos.InsertParameters["codigomarca"].DefaultValue = this.ddlMarca.SelectedValue;
            this.DSAutos.InsertParameters["foto"].DefaultValue = this.fuFoto.FileName;
            this.DSAutos.Insert();
            this.lblResult.Text = "Los datos fueron cargados";
            this.txtPatente.Text = "";
            this.txtPropietario.Text = "";
            this.txtPrecio.Text = "";
            this.txtModelo.Text = "";
        }
    }
}