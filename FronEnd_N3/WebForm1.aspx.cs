using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!this.IsPostBack)
            {
                string[] list_num_int = N2.DevuelveNumInv();
                foreach (var nv in list_num_int)
                    DropDownList1.Items.Add(nv.ToString());
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           Label4.Text = N2.ConexionSQL();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string numInv = DropDownList1.SelectedValue;
            GridView1.DataSource = N2.Lista_PCFINAL(numInv);
            GridView1.DataBind();
        }
    }
}