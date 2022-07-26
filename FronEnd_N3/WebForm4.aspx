<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="FronEnd_N3.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Consultar Marcas" />
&nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Consultar Componentes" />
&nbsp;
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Consultar Marcas con Componentes" />
&nbsp;
<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Consultar Disco, la marca y el componente" />
&nbsp;<asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Consultar Monitor, marca y componente" />
&nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Consultar moTeclado, marca y el componente" />
<br />
<br />
&nbsp;<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
</asp:Content>
