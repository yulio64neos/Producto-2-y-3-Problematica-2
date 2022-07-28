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

                string[] lisMarca = N2.DevuelveMarcas();
                foreach (var mar in lisMarca)
                {
                    DropDownList2.Items.Add(mar.ToString());
                    DropDownList8.Items.Add(mar.ToString());
                    DropDownList13.Items.Add(mar.ToString());
                    DropDownList14.Items.Add(mar.ToString());
                    DropDownList16.Items.Add(mar.ToString());
                    DropDownList17.Items.Add(mar.ToString());
                    DropDownList18.Items.Add(mar.ToString());
                    DropDownList20.Items.Add(mar.ToString());
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
                }

                string[] conTec = N2.DevuelveConTec();
                foreach (var cT in conTec)
                {
                    DropDownList15.Items.Add(cT.ToString());
                }

                string[] conMus = N2.DevuelveConMus();
                foreach (var cMus in conMus)
                {
                    DropDownList18.Items.Add(cMus.ToString());
                }

                string[] ubic = N2.DevuelveUbicacion();
                foreach (var ubi in ubic)
                {
                    DropDownList21.Items.Add(ubi.ToString());
                }

                string[] labor = N2.Devuelvelaboratorio();
                foreach (var laborn in labor)
                {
                    DropDownList2.Items.Add(laborn.ToString());
                }
            }
        }
    }
}