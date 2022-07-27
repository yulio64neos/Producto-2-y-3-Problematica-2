<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="FronEnd_N3.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Consultar Inventario por ID" />
&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Consultar Equipos de Laboratorio" />
&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Consultar Equipos de Laboratorio con SDD" />
&nbsp;&nbsp;
    <asp:Button ID="Button4" runat="server" Text="Consultar Inventario" OnClick="Button4_Click" />
    <br />
    <br />
    <br />
    <center>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    </center>
</asp:Content>
