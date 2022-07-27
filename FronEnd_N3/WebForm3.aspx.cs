using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] list_monitor = N2.DevuelveTipoConectorMonitor();
                foreach (var nd in list_monitor)
                    DropDownList1.Items.Add(nd.ToString());
            }
        }
    }
}