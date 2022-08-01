<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FronEnd_N3.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-5">   
        <div class="row">
            <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server" Text="Equipos con laboratorio predeterminado" CssClass="mb-3"></asp:Label>
                <asp:Button ID="Button1" runat="server" Text="Consultar" OnClick="Button1_Click" CssClass="btn btn-primary"/>
            </div>
            <div class="col-sm-6">
                <asp:Label ID="Label3" runat="server" Text="Equipos con laboratorio predeterminado y discos de estado solido" CssClass="mb-3"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Consultar" OnClick="Button2_Click" CssClass="btn btn-primary"/>
            </div>
        </div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover mt-5">
            <EmptyDataTemplate>
                <div class="alert alert-danger" role="alert">
                    No hay datos para mostrar, intente con otro dato.
                </div>
            </EmptyDataTemplate>
        </asp:GridView>
    </div>
</asp:Content>
