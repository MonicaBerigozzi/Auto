using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autos
{
    public partial class bajaauto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.DSAutos.DeleteParameters["patente"].DefaultValue = this.TextBox1.Text;
            int cant;
            cant = this.DSAutos.Delete();
            if (cant == 0)
                this.lblResult.Text = "No existe un auto con el valor de patente ingresado";
            else
            {
                this.lblResult.Text = "Se borro el auto con dicha patente";
                this.DSAutos.SelectParameters["patente"].DefaultValue = this.TextBox1.Text;
                this.DSAutos.DataSourceMode = SqlDataSourceMode.DataReader;
                SqlDataReader registro;
                registro = (SqlDataReader)this.DSAutos.Select(DataSourceSelectArguments.Empty);
                if (registro.Read())
                    File.Delete(Server.MapPath(".") + "/" + registro["foto"]);
            }
        }
    }
}