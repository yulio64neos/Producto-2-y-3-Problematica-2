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
            if (Session["N2"]!=null)
            {
                N2 = (Operaciones)Session["N2"];
            }

            if (!this.IsPostBack)
            {
                string[] listTRam = N2.DevuelveTiRAM();
                foreach (var tra in listTRam)
                {
                    DropDownList1.Items.Add(tra.ToString());
                }
                string[] filtDD = N2.FilDD();
                foreach (var FilDDi in filtDD)
                {
                    DropDownList11.Items.Add(FilDDi.ToString());
                }
                string[] filtgab = N2.FilGab();
                foreach (var FilGABI in filtgab)
                {
                    DropDownList2.Items.Add(FilGABI.ToString());
                }
                string[] filtCP = N2.FilCPU();
                foreach (var Filcpu2 in filtCP)
                {
                    DropDownList3.Items.Add(Filcpu2.ToString());
                }
                string[] filtmo = N2.FilMous();
                foreach (var Filmous1
                    in filtmo)
                {
                    DropDownList8.Items.Add(Filmous1.ToString());
                }
                string[] filtTec = N2.FilTecla();
                foreach (var Filclado in filtTec)
                {
                    DropDownList9.Items.Add(Filclado.ToString());
                }
                string[] filtMon = N2.FilMoni();
                foreach (var Filtor in filtMon)
                {
                    DropDownList10.Items.Add(Filtor.ToString());
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
            Session["N2"] = N2;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string tram = DropDownList1.SelectedValue;
            msj2.Text = N2.InRAM(TextBox2.Text, TextBox3.Text, tram);
            Session["N2"] = N2;
            TextBox2.Text = "";
            TextBox3.Text = "";            
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mark = DropDownList2.SelectedValue;
            msj3.Text = N2.InGABI(TextBox4.Text, TextBox5.Text, mark);
            Session["N2"] = N2;
            TextBox4.Text = "";
            TextBox5.Text = "";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string mark = DropDownList3.SelectedValue;
            msj4.Text = N2.InMOCPU(TextBox6.Text, mark);
            Session["N2"] = N2;
            TextBox6.Text="";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string mod = DropDownList4.SelectedValue;
            msj5.Text= N2.InTCPU(TextBox7.Text, TextBox8.Text, mod);
            Session["N2"] = N2;
            TextBox7.Text = "";
            TextBox8.Text = "";
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string modG = DropDownList5.SelectedValue;
            string tipG = DropDownList18.SelectedValue;
            string rc = DropDownList6.SelectedValue;
            string rv = DropDownList19.SelectedValue;
            string fc = DropDownList7.SelectedValue;
            string vc = DropDownList20.SelectedValue;
            msj6.Text = N2.InCPUG(TextBox9.Text, modG, tipG, rc, rv, fc, vc);
            Session["N2"] = N2;
            TextBox9.Text = "";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            string mark = DropDownList8.SelectedValue;
            msj7.Text = N2.InMOUS(TextBox10.Text, mark);
            Session["N2"] = N2;
            TextBox10.Text = "";
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            string mark = DropDownList9.SelectedValue;
            msj8.Text = N2.InTECLA(TextBox11.Text, mark);
            Session["N2"] = N2;
            TextBox11.Text = "";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            string mark = DropDownList10.SelectedValue;
            msj9.Text = N2.InMONT(TextBox12.Text, TextBox13.Text, mark);
            Session["N2"] = N2;
            TextBox12.Text = "";
            TextBox13.Text = "";
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            string mark = DropDownList11.SelectedValue;
            msj10.Text = N2.InDD(TextBox14.Text, TextBox15.Text, TextBox16.Text, mark);
            Session["N2"] = N2;
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            msj12.Text = N2.InLABO(TextBox19.Text);
            Session["N2"] = N2;
            TextBox19.Text = "";
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string r1 = "";
            string r2 = "";
            string r3 = "";
            string FU1 = FileUpload1.FileName;
            string FU2 = FileUpload2.FileName;
            string FU3 = FileUpload3.FileName;
            
            if (FileUpload1.HasFiles)
            {
                r1 = "Imagenes/" + FU1;
                int tamaño = FileUpload1.PostedFile.ContentLength;
                if(tamaño>5242880)
                {Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet", "arlet('File is too gig')", true);}
                else
                {
                    FileUpload1.SaveAs(Server.MapPath(r1 + FileUpload1.FileName));
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet1", "arlet('Save')", true);
                }
            }
            if (FileUpload2.HasFiles)
            {
                r2 = "Imagenes/" + FU2;
                int tamaño = FileUpload2.PostedFile.ContentLength;
                if (tamaño > 5242880)
                { Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet", "arlet('File is too gig')", true); }
                else
                {
                    FileUpload2.SaveAs(Server.MapPath(r2 + FileUpload2.FileName));
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet1", "arlet('Save')", true);
                }
            }
            if (FileUpload3.HasFiles)
            {
                r3 = "Imagenes/" + FU3;
                int tamaño = FileUpload3.PostedFile.ContentLength;
                if (tamaño > 5242880)
                { Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet", "arlet('File is too gig')", true); }
                else
                {
                    FileUpload3.SaveAs(Server.MapPath(r3 + FileUpload3.FileName));
                    Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "Arlet1", "arlet('Save')", true);
                }
            }
            string cT = DropDownList13.SelectedValue;
            string cM = DropDownList14.SelectedValue;
            string tM = DropDownList21.SelectedValue;
            string cMo = DropDownList15.SelectedValue;
            string cpu = DropDownList16.SelectedValue;
            string la = DropDownList17.SelectedValue;
            string dd = DropDownList12.SelectedValue;

            msj13.Text = N2.InPCFIN(TextBox20.Text,cMo,cpu,la,cT,cM,tM,r1,r2,r3);
            N2.InCANDD(Int16.Parse(TextBox17.Text), TextBox20.Text, dd);
            TextBox20.Text = "";
        }

    }
}