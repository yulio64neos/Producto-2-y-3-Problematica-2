<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FronEnd_N3.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">
        <div class="row">
            <div class="col-sm-3">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Revisar conexión" CssClass="fw-light mb-2 btn btn-outline-primary"/>
                <div class="alert alert-success" role="alert">
                    <asp:Label ID="Label4" runat="server" CssClass="fw-light mt-2"></asp:Label>
                </div>
            </div>
            <div class="col-sm-3">
                <asp:Label ID="Label1" runat="server" Text="Coloque el numero del inventario" CssClass="fw-light"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="col-sm-3">
                <asp:Button ID="Button1" runat="server" Text="Mostrar toda la información " OnClick="Button1_Click" CssClass="btn btn-outline-primary"/>
            </div>
            <div class="col-sm-3">
                <asp:Button ID="Button2" runat="server" Text="Mostrar Detalles de Actualización" OnClick="Button2_Click" CssClass="btn btn-outline-primary"/>
            </div>
        </div>
    </div>
    <div class="mt-5">
        <div class="row">
            <div class="col-sm-12">
                <asp:Label ID="Label2" runat="server" Text="Información Completa" CssClass="fw-light"></asp:Label>
                <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover">
                    <EmptyDataTemplate>
                        <div class="alert alert-danger" role="alert">
                            No hay datos para mostrar, intente con otro dato.
                        </div>
                    </EmptyDataTemplate>
                </asp:GridView>
            </div>
            <div class="col-sm-12">
            <asp:Label ID="Label3" runat="server" Text="Detalles de actualización" CssClass="fw-light"></asp:Label>
            <asp:GridView ID="GridView2" runat="server" CssClass="table table-hover fw-light">
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
