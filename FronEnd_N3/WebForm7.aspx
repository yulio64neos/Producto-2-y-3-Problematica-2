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
    </div>
    <div class="alert alert-warning" role="alert" runat="server" id="alerta">
        <asp:TextBox ID="txtAlerta" runat="server"></asp:TextBox>
    </div>

</asp:Content>
