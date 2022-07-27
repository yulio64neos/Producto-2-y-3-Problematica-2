using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DEL TECLADO, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getTeclado();
            GridView1.DataBind();
        }
    }
}