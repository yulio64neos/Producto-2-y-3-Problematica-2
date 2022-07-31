using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using BL_N2;

namespace FronEnd_N3
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        Operaciones N2 = new Operaciones();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string[] lidMCP = N2.DevuelveModeloCPU();
                foreach (var mdcpu in lidMCP)
                {
                    DropDownList1.Items.Add(mdcpu.ToString());
                    DropDownList5.Items.Add(mdcpu.ToString());
                }             
                string[] familia = N2.DevuelveFamilia();
                foreach (var mar in familia)
                {
                    DropDownList3.Items.Add(mar.ToString());
                }

                string[] VelCPU = N2.DevuelveVelCPU();
                foreach (var vel in VelCPU)
                {
                    DropDownList4.Items.Add(vel.ToString());
                }

                string[] modG = N2.DevuelveModGab();
                foreach (var madG in modG)
                {
                    DropDownList6.Items.Add(madG.ToString());
                }

                string[] tipGa = N2.DevuelveTipGabinete();
                foreach (var tG in tipGa)
                {
                    DropDownList7.Items.Add(tG.ToString());
                }

                int[] CapRa = N2.DevuelveCapRam();
                foreach (var caR in CapRa)
                {
                    DropDownList9.Items.Add(caR.ToString());                   
                }

                string[] velRam = N2.DevuelveVelRam();
                foreach (var vr in velRam)
                {
                    DropDownList10.Items.Add(vr.ToString());
                }

                string[] conMon = N2.DevuelveConMon();
                foreach (var cM in conMon)
                {
                    DropDownList12.Items.Add(cM.ToString());
                    DropDownList22.Items.Add(cM.ToString());
                }
                string[] conMonT = N2.DevuelveTamMon();
                foreach (var cTMo in conMonT)
                {DropDownList23.Items.Add(cTMo.ToString());}

                string[] conTec = N2.DevuelveConTec();
                foreach (var cT in conTec)
                {
                    DropDownList15.Items.Add(cT.ToString());
                    DropDownList25.Items.Add(cT.ToString());
                }

                string[] conMus = N2.DevuelveConMus();
                foreach (var cMus in conMus)
                {
                    DropDownList18.Items.Add(cMus.ToString());
                    DropDownList24.Items.Add(cMus.ToString());
                }

                string[] tiRAm = N2.DevuelveTiRAM();
                foreach (var tRa in tiRAm)
                {
                    DropDownList11.Items.Add(tRa.ToString());
                }
                string[] filtCP = N2.FilCPU();
                foreach (var Filcpu2 in filtCP)
                {
                    DropDownList2.Items.Add(Filcpu2.ToString());
                }
                string[] filtgab = N2.FilGab();
                foreach (var FilGABI in filtgab)
                {
                    DropDownList8.Items.Add(FilGABI.ToString());
                }
                string[] filtMon = N2.FilMoni();
                foreach (var Filtor in filtMon)
                {
                    DropDownList13.Items.Add(Filtor.ToString());
                    DropDownList14.Items.Add(Filtor.ToString());
                }
                string[] filtTec = N2.FilTecla();
                foreach (var Filclado in filtTec)
                {
                    DropDownList16.Items.Add(Filclado.ToString());
                    DropDownList17.Items.Add(Filclado.ToString());
                }
                string[] filtmo = N2.FilMous();
                foreach (var Filmous1
                    in filtmo)
                {
                    DropDownList19.Items.Add(Filmous1.ToString());
                    DropDownList20.Items.Add(Filmous1.ToString());
                }
                string[] list_num_int = N2.DevuelveNumInv();
                foreach (var nv in list_num_int)
                {DropDownList21.Items.Add(nv.ToString());}
                string[] listMCG = N2.DevuelveModeloCPUG();
                foreach (var mcg in listMCG)
                { DropDownList26.Items.Add(mcg.ToString()); }
                string[] listLab = N2.Devuelvelaboratorio();
                foreach (var labor in listLab)
                { DropDownList27.Items.Add(labor.ToString()); }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ind = DropDownList1.SelectedValue;
            string mMar = DropDownList2.SelectedValue;
            msj1.Text = N2.ActModCPU(ind,TextBox1.Text,mMar);
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string fam = DropDownList3.SelectedValue;
            string vel = DropDownList4.SelectedValue;
            string mod = DropDownList5.SelectedValue;
            msj2.Text = N2.ActTcCPU(fam,vel, TextBox2.Text, TextBox3.Text, mod);
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mod = DropDownList6.SelectedValue;
            string forma = DropDownList7.SelectedValue;
            string marca = DropDownList8.SelectedValue;
            msj3.Text = N2.ActGabi(mod, forma, TextBox4.Text, TextBox5.Text, marca);
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string cap = DropDownList9.SelectedValue;
            string velo = DropDownList10.SelectedValue;
            string tip = DropDownList11.SelectedValue;
            msj4.Text = N2.ActRam(cap, velo, TextBox6.Text, TextBox7.Text, tip);
            TextBox6.Text = "";
            TextBox7.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string con = DropDownList12.SelectedValue;
            string mat = DropDownList13.SelectedValue;
            string mar = DropDownList14.SelectedValue;
            msj5.Text = N2.ActMoni(con, mat, TextBox8.Text, TextBox9.Text, mar);
            TextBox8.Text = "";
            TextBox9.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string cone = DropDownList15.SelectedValue;
            string mar = DropDownList16.SelectedValue;
            string mar2 = DropDownList17.SelectedValue;
            msj6.Text = N2.ActTec(cone, mar, TextBox10.Text, mar2);
            TextBox10.Text = "";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string cone = DropDownList18.SelectedValue;
            string mar = DropDownList19.SelectedValue;
            string mar2 = DropDownList20.SelectedValue;
            msj7.Text = N2.ActMous(cone, mar, TextBox11.Text, mar2);
            TextBox11.Text = "";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string numI = DropDownList21.SelectedValue;
            string MC = DropDownList22.SelectedValue;
            string MT = DropDownList23.SelectedValue;
            string MU = DropDownList24.SelectedValue;
            string CP = DropDownList26.SelectedValue;
            string LB = DropDownList27.SelectedValue;
            string TC = DropDownList25.SelectedValue;
            msj8.Text = N2.ActPCF(numI, MC, MT, MU, CP, LB, TC, TextBox12.Text, TextBox13.Text, numI);
            TextBox12.Text = "";
            TextBox13.Text = "";
        }
    }
}