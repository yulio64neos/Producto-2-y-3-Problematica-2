using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                alerta.Visible = false;
                int[] idCompo = N2.IdListaComponente();
                foreach (var id_compo in idCompo)
                    DropDownListIdComponente.Items.Add(id_compo.ToString());
                GridView1.DataSource = N2.CompoFull();
                GridView1.DataBind();

                int[] idMarca = N2.IdListaMarca();
                foreach (var id_mar in idMarca)
                    DropDownListIdMarca.Items.Add(id_mar.ToString());
                GridView2.DataSource = N2.MarcaFull();
                GridView2.DataBind();

                int[] idMonitor = N2.IdListaMonitor();
                foreach (var id_mon in idMonitor)
                    DropDownListIdMonitor.Items.Add(id_mon.ToString());
                GridView3.DataSource = N2.MonitorFull();
                GridView3.DataBind();

                int[] idDisco = N2.IdListaDiscoDuro();
                foreach (var id_disk in idDisco)
                    DropDownListIdDisco.Items.Add(id_disk.ToString());
                GridView4.DataSource = N2.DiscuDuroFuLL();
                GridView4.DataBind();
            }
        }

        protected void btnEliminaComponente_Click(object sender, EventArgs e)
        {
            int idCompon = Convert.ToInt32(DropDownListIdComponente.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_COMPO(idCompon) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarMarca_Click(object sender, EventArgs e)
        {
            int idMarca = Convert.ToInt32(DropDownListIdMarca.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_MARCA(idMarca) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarMonitor_Click(object sender, EventArgs e)
        {
            int idMonitor = Convert.ToInt32(DropDownListIdMonitor.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_MONITOR(idMonitor) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarDisco_Click(object sender, EventArgs e)
        {
            int idDisco = Convert.ToInt32(DropDownListIdDisco.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_Disco(idDisco) + " ";
            alerta.Visible = true;
        }
    }
}