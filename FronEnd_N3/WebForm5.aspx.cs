using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] listTRam = N2.DevuelveTiRAM();
                foreach (var tra in listTRam)
                {
                    DropDownList1.Items.Add(tra.ToString());
                }
                string[] listmarca = N2.DevuelveMarcas();
                foreach(var mar in listmarca)
                {
                    DropDownList2.Items.Add(mar.ToString());
                    DropDownList3.Items.Add(mar.ToString());
                    DropDownList8.Items.Add(mar.ToString());
                    DropDownList9.Items.Add(mar.ToString());
                    DropDownList10.Items.Add(mar.ToString());
                    DropDownList11.Items.Add(mar.ToString());
                }
                string[] listMoCPU = N2.DevuelveModeloCPU();
                foreach (var listMCP in listMoCPU)
                {
                    DropDownList4.Items.Add(listMCP.ToString());
                }
                string[] listMGA = N2.DevuelveModGab();
                foreach(var listMG in listMGA)
                {
                    DropDownList5.Items.Add(listMG.ToString());
                }
                string[] listTGA = N2.DevuelveTipGabinete();
                foreach (var listTG in listTGA)
                {
                    DropDownList18.Items.Add(listTG.ToString());
                }
                int[] listCRAM = N2.DevuelveCapRam();
                foreach (var listCR in listCRAM)
                {
                    DropDownList6.Items.Add(listCR.ToString());
                }
                string[] listVRAM = N2.DevuelveVelRam();
                foreach (var listVR in listVRAM)
                {
                    DropDownList19.Items.Add(listVR.ToString());
                }
                string[] listFATC = N2.DevuelveFamilia();
                foreach (var listfcpu in listFATC)
                {
                    DropDownList7.Items.Add(listfcpu.ToString());
                }
                string[] listVCP = N2.DevuelveVelCPU();
                foreach (var listVc in listVCP)
                {
                    DropDownList20.Items.Add(listVc.ToString());
                }
                string[] listDD = N2.DevuelveDD();
                foreach (var listDDT in listDD)
                {
                    DropDownList12.Items.Add(listDDT.ToString());
                }
                string[] listCT = N2.DevuelveConTec();
                foreach (var listCTT in listCT)
                {
                    DropDownList13.Items.Add(listCTT.ToString());
                }
                string[] listCM = N2.DevuelveConMus();
                foreach (var listCMM in listCM)
                {
                    DropDownList15.Items.Add(listCMM.ToString());
                }
                string[] listCMO = N2.DevuelveConMon();
                foreach (var listTCMO in listCMO)
                {
                    DropDownList14.Items.Add(listTCMO.ToString());
                }
                string[] listTMO = N2.DevuelveTamMon();
                foreach (var listTM in listTMO)
                {
                    DropDownList21.Items.Add(listTM.ToString());
                }
                string[] listMCG = N2.DevuelveModeloCPUG();
                foreach (var listMGN in listMCG)
                {
                    DropDownList16.Items.Add(listMGN.ToString());
                }
                string[] listLab = N2.Devuelvelaboratorio();
                foreach (var listlabo in listLab)
                {
                    DropDownList17.Items.Add(listlabo.ToString());
                }
            }
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            msj1.Text = N2.InTIRAM(TextBox1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string tram = DropDownList1.SelectedValue;
            msj2.Text = N2.InRAM(TextBox2.Text, TextBox3.Text, tram);
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mark = DropDownList2.SelectedValue;
            msj3.Text = N2.InGABI(TextBox4.Text, TextBox5.Text, mark);
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}