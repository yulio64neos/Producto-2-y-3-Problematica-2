using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA MARCAS";
            GridView1.DataSource = N2.ObtenerMarcas();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA COMPONENTES";
            GridView1.DataSource = N2.ObtenerCompo();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA MARCA Y COMPONENTES";
            GridView1.DataSource = N2.getCompoMarca();
            GridView1.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DE DISCO DURO, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getDisco();
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DE MONITORE, MARCA Y SUS COMPONENTE";
            GridView1.DataSource = N2.getMonitor();
            GridView1.DataBind();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DEL TECLADO, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getTeclado();
            GridView1.DataBind();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DEL MOUSE, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getMouse();
            GridView1.DataBind();
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DEL GABINETE, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getGabinete();
            GridView1.DataBind();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label1.Text = "TABLA DEL CPU, MARCA Y SUS COMPONENTES";
            GridView1.DataSource = N2.getTeclado();
            GridView1.DataBind();
        }
    }
}