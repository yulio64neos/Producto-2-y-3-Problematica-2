<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="FronEnd_N3.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Seleccione el monitor: "></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="374px">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
</asp:Content>
