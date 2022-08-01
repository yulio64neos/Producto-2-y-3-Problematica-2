<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="FronEnd_N3.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="row">
            <p class="fs-1">Eliminar Componente</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del componente</p>
                <asp:DropDownList ID="DropDownListIdComponente" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminaComponente" runat="server" Text="Eliminar Componente" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminaComponente_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Marca</p>
            <div class="col-sm-6">
                <p>Selecciona el ID de la Marca</p>
                <asp:DropDownList ID="DropDownListIdMarca" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarMarca" runat="server" Text="Eliminar Marca" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarMarca_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Monitor</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Monitor</p>
                <asp:DropDownList ID="DropDownListIdMonitor" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarMonitor" runat="server" Text="Eliminar Monitor" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarMonitor_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView3" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Disco</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Disco</p>
                <asp:DropDownList ID="DropDownListIdDisco" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarDisco" runat="server" Text="Eliminar Disco" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarDisco_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView4" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Teclado</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Teclado</p>
                <asp:DropDownList ID="DropDownListIdTeclado" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarTeclado" runat="server" Text="Eliminar Teclado" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarTeclado_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView5" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Mouse</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Mouse</p>
                <asp:DropDownList ID="DropDownListIdMouse" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarMouse" runat="server" Text="Eliminar Mouse" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarMouse_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView6" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar ModeloCPU</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del ModeloCPU</p>
                <asp:DropDownList ID="DropDownListIdModeloCPU" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarModeloCPU" runat="server" Text="Eliminar ModeloCPU" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarModeloCPU_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView7" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Gabinete</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Gabinete</p>
                <asp:DropDownList ID="DropDownListGabinete" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="ButtonGabinente" runat="server" Text="Eliminar Gabinete" CssClass="mt-5 btn btn-outline-danger" OnClick="ButtonGabinente_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView8" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar TipoCPU</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del TipoCPU</p>
                <asp:DropDownList ID="DropDownListTipoCPU" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarTipoCPU" runat="server" Text="Eliminar TipoCPU" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarTipoCPU_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView9" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar TipoRAM</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del TipoRAM</p>
                <asp:DropDownList ID="DropDownListTipoRAM" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarTipoRAM" runat="server" Text="Eliminar TipoRAM" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarTipoRAM_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView10" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar RAM</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del RAM</p>
                <asp:DropDownList ID="DropDownListRAM" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminarRAM" runat="server" Text="Eliminar RAM" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminarRAM_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView11" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar CPU Generico</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del CPU Generico</p>
                <asp:DropDownList ID="DropDownListCPUGEN" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnCPUGEN" runat="server" Text="Eliminar CPU Generico" CssClass="mt-5 btn btn-outline-danger" OnClick="btnCPUGEN_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView12" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Laboratorio</p>
            <div class="col-sm-6">
                <p>Selecciona el ID del Laboratorio</p>
                <asp:DropDownList ID="DropDownListListLaboratorio" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnLaboratorio" runat="server" Text="Eliminar Laboratorio" CssClass="mt-5 btn btn-outline-danger" OnClick="btnLaboratorio_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView13" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Actualizacion</p>
            <div class="col-sm-6">
                <p>Selecciona el ID de la Actualizacion</p>
                <asp:DropDownList ID="DropDownListActualizacion" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnEliminaActualizacion" runat="server" Text="Eliminar Actualizacion" CssClass="mt-5 btn btn-outline-danger" OnClick="btnEliminaActualizacion_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView14" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Computadora Final</p>
            <div class="col-sm-6">
                <p>Selecciona el ID de la Computadora Final</p>
                <asp:DropDownList ID="DropDownListComputadoraFinal" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnComputadoraFinal" runat="server" Text="Eliminar Computadora Final" CssClass="mt-5 btn btn-outline-danger" OnClick="btnComputadoraFinal_Click"/>
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView15" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
        <div class="row">
            <p class="fs-1">Eliminar Cantidad Disco</p>
            <div class="col-sm-6">
                <p>Selecciona el ID de la Cantidad Disco</p>
                <asp:DropDownList ID="DropDownListCantidadDisco" runat="server" CssClass="form-select"></asp:DropDownList>
                <asp:Button ID="btnCantidadDisco" runat="server" Text="Eliminar Cantidad Disco" CssClass="mt-5 btn btn-outline-danger" OnClick="btnCantidadDisco_Click" />
            </div>
            <div class="col-sm-6">
                <asp:GridView ID="GridView16" runat="server" CssClass="table table-hover"></asp:GridView>
            </div>
        </div>
    </div>
    <div class="alert alert-warning" role="alert" runat="server" id="alerta">
        <asp:TextBox ID="txtAlerta" runat="server"></asp:TextBox>
    </div>

</asp:Content>
