<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="FronEnd_N3.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Mostrar: "></asp:Label>
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Equipos con laboratorio predeterminado" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Equipos con laboratorio predeterminado y discos de estado solido" />
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
