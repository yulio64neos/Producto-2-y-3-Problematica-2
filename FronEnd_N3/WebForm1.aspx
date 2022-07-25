<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FronEnd_N3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
<br />
<asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Revisar conexión" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="Label4" runat="server"></asp:Label>
<br />
<asp:Label ID="Label1" runat="server" Text="Coloque el numero del inventario: "></asp:Label>
<asp:TextBox ID="TextBox1" runat="server" Width="233px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Mostrar toda la información " OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button2" runat="server" Text="Mostrar Detalles de Actualización" />
<br />
<br />
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Información Completa"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Detalles de actualización"></asp:Label>
<br />
<br />
<asp:GridView ID="GridView2" runat="server">
</asp:GridView>
    
</asp:Content>
