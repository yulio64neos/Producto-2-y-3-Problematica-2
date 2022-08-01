<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="FronEnd_N3.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row align-items-center mt-5">
        <div class="col-auto">
            <asp:Label ID="Label1" runat="server" Text="Seleccione el monitor: "></asp:Label>
        </div>
        <div class="col-auto">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
            </asp:DropDownList>
        </div>
        <div class="col-auto">
            <asp:Button ID="btnMostrarMonitor" runat="server" Text="Ver tabla" CssClass="btn btn-primary" OnClick="btnMostrarMonitor_Click"/>
        </div>
    </div>
    <div class="row align-items-center mt-5">
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover">
            <EmptyDataTemplate>
                <div class="alert alert-danger" role="alert">
                  No hay datos para mostrar, intente con otro dato.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>

</asp:Content>
