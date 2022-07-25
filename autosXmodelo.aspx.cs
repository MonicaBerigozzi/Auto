using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autos
{
    public partial class autosXmodelo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            this.DSAutos.SelectParameters["modelo1"].DefaultValue = this.TextBox1.Text;
            this.DSAutos.SelectParameters["modelo2"].DefaultValue = this.TextBox2.Text;
            this.DSAutos.DataSourceMode = SqlDataSourceMode.DataReader;
            SqlDataReader registros = (SqlDataReader)this.DSAutos.Select(DataSourceSelectArguments.Empty);
            this.lblResult.Text = "";
            while (registros.Read() == true)
            {
                this.lblResult.Text = this.lblResult.Text + "<img src=\"" + registros["foto"] + "\"><br><br>";
            }
        }
    }
}