﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Autos
{
    public partial class abmmarcas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            this.DSMarcas.InsertParameters["descripcion"].DefaultValue = this.txtDescripcion.Text;
            this.DSMarcas.Insert();
            this.txtDescripcion.Text = "";
        }
    }
}