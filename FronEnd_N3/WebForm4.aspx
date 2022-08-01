<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="FronEnd_N3.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="row">
            <div class="col">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar Marcas" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Consultar Componentes" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Consultar Marcas con Componentes" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Consultar Disco, la marca y el componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Consultar Monitor, marca y componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Consultar moTeclado, marca y el componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Consultar Mouse, marca y componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Consultar Gabinete, marca y componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
            <div class="col">
                <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="Consultar CPU, marca y componente" CssClass="btn btn-outline-primary fw-light"/>
            </div>
        </div>
    </div>
    <div class="mt-5">
        <div class="row">
            <div class="col-sm-12">
                <asp:Label ID="Label1" runat="server" CssClass="fw-light"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover fw-light mt-2">
                    <EmptyDataTemplate>
                        <div class="alert alert-danger fw-light" role="alert">
                          No hay datos para mostrar, intente con otro dato.
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
        </div>
        
    </div>
</asp:Content>
