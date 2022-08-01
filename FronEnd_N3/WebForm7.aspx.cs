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

                int[] idTeclado = N2.IdListaTeclado();
                foreach (var id_tecla in idTeclado)
                    DropDownListIdTeclado.Items.Add(id_tecla.ToString());
                GridView5.DataSource = N2.TecladoFull();
                GridView5.DataBind();

                int[] idMouse = N2.IdListaMouse();
                foreach (var id_Mouse in idMouse)
                    DropDownListIdMouse.Items.Add(id_Mouse.ToString());
                GridView6.DataSource = N2.MouseFull();
                GridView6.DataBind();

                int[] idModeloCPU = N2.IdListaModeloCPU();
                foreach (var id_ModCPU in idModeloCPU)
                    DropDownListIdModeloCPU.Items.Add(id_ModCPU.ToString());
                GridView7.DataSource = N2.ModeloCPUFull();
                GridView7.DataBind();

                int[] idGabi = N2.IdListaGabinete();
                foreach (var id_Gabinete in idGabi)
                    DropDownListGabinete.Items.Add(id_Gabinete.ToString());
                GridView8.DataSource = N2.ModeloGabineteFull();
                GridView8.DataBind();

                int[] idTipoCPU = N2.IdListaTipoCPU();
                foreach (var id_TipoCPU in idTipoCPU)
                    DropDownListTipoCPU.Items.Add(id_TipoCPU.ToString());
                GridView9.DataSource = N2.TipoCPUFull();
                GridView9.DataBind();

                int[] idTipoRAM = N2.IdListaTipoRAM();
                foreach (var id_TipoRAM in idTipoRAM)
                    DropDownListTipoRAM.Items.Add(id_TipoRAM.ToString());
                GridView10.DataSource = N2.TipoRAMFull();
                GridView10.DataBind();

                int[] idRAM = N2.IdListaRAM();
                foreach (var id_RAM in idRAM)
                    DropDownListRAM.Items.Add(id_RAM.ToString());
                GridView11.DataSource = N2.RAMFull();
                GridView11.DataBind();

                int[] idCpugen = N2.IdListaCPUGEN();
                foreach (var id_CPUGEN in idCpugen)
                    DropDownListCPUGEN.Items.Add(id_CPUGEN.ToString());
                GridView12.DataSource = N2.CPU_GENFull();
                GridView12.DataBind();

                string[] idLabo = N2.IdListaLaboratorio();
                foreach (var id_Labo in idLabo)
                    DropDownListListLaboratorio.Items.Add(id_Labo.ToString());
                GridView13.DataSource = N2.LaboFull();
                GridView13.DataBind();

                int[] idActua = N2.IdListaActualizacion();
                foreach (var id_Actualizacion in idActua)
                    DropDownListActualizacion.Items.Add(id_Actualizacion.ToString());
                GridView14.DataSource = N2.ActualizacionFULL();
                GridView14.DataBind();

                string[] idCompuFin = N2.IdListaComputadoraFinal();
                foreach (var id_CompuFin in idCompuFin)
                    DropDownListComputadoraFinal.Items.Add(id_CompuFin.ToString());
                GridView15.DataSource = N2.ComputadoraFinalFULL();
                GridView15.DataBind();

                int[] idCantidadDisco = N2.IdListaCantidadDisco();
                foreach (var id_CantidadDisco in idCantidadDisco)
                    DropDownListCantidadDisco.Items.Add(id_CantidadDisco.ToString());
                GridView16.DataSource = N2.CantidadDiscoFULL();
                GridView16.DataBind();
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

        protected void btnEliminarTeclado_Click(object sender, EventArgs e)
        {
            int idTeclado = Convert.ToInt32(DropDownListIdTeclado.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_Teclado(idTeclado) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarMouse_Click(object sender, EventArgs e)
        {
            int idMouse = Convert.ToInt32(DropDownListIdMouse.SelectedValue);
            txtAlerta.Text = " " + N2.Elimina_mouse(idMouse) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarModeloCPU_Click(object sender, EventArgs e)
        {
            int idModeloCPU = Convert.ToInt32(DropDownListIdModeloCPU.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_MODELOPU(idModeloCPU) + " ";
            alerta.Visible = true;
        }

        protected void ButtonGabinente_Click(object sender, EventArgs e)
        {
            int idGabinete = Convert.ToInt32(DropDownListGabinete.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_GAB(idGabinete) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarTipoCPU_Click(object sender, EventArgs e)
        {
            int idTipoCPU = Convert.ToInt32(DropDownListTipoCPU.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_TIPOCPU(idTipoCPU) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarTipoRAM_Click(object sender, EventArgs e)
        {
            int idTipoRAM = Convert.ToInt32(DropDownListTipoRAM.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_TIPORAM(idTipoRAM) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminarRAM_Click(object sender, EventArgs e)
        {
            int idRAM = Convert.ToInt32(DropDownListRAM.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_RAM(idRAM) + " ";
            alerta.Visible = true;
        }

        protected void btnCPUGEN_Click(object sender, EventArgs e)
        {
            int idCPUGEN = Convert.ToInt32(DropDownListCPUGEN.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_CPU(idCPUGEN) + " ";
            alerta.Visible = true;
        }

        protected void btnLaboratorio_Click(object sender, EventArgs e)
        {
            string idLabo = DropDownListListLaboratorio.SelectedValue;
            txtAlerta.Text = " " + N2.Eliminar_LABORATORIO(idLabo) + " ";
            alerta.Visible = true;
        }

        protected void btnEliminaActualizacion_Click(object sender, EventArgs e)
        {
            int idAct = Convert.ToInt32(DropDownListActualizacion.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_ACTUALIZACION(idAct) + " ";
            alerta.Visible = true;
        }

        protected void btnComputadoraFinal_Click(object sender, EventArgs e)
        {
            string idCompuFinal = DropDownListComputadoraFinal.SelectedValue;
            txtAlerta.Text = " " + N2.Eliminar_CPUFINAL(idCompuFinal) + " ";
            alerta.Visible = true;
        }

        protected void btnCantidadDisco_Click(object sender, EventArgs e)
        {
            int idCantidadDisco = Convert.ToInt32(DropDownListCantidadDisco.SelectedValue);
            txtAlerta.Text = " " + N2.Eliminar_CANTDISCO(idCantidadDisco) + " ";
            alerta.Visible = true;
        }
    }
}