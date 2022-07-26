<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="FronEnd_N3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="CPU"></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Text="Modelo: "></asp:Label>
        &nbsp;<asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Marca: "></asp:Label>
        <asp:DropDownList ID="DropDownList3" runat="server">
        </asp:DropDownList>
&nbsp;<asp:Label ID="Label3" runat="server" Text="Familia"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Velocidad:  "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;</p>
    <p>
        <asp:Label ID="Label9" runat="server" Text="Descripción:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server" Height="81px" Width="829px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="RAM"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Tipo de Ram"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="112px">
        </asp:DropDownList>
&nbsp;
        <asp:Label ID="Label10" runat="server" Text="Capacidad"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Velocidad"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    </p>
        <asp:Label ID="Label12" runat="server" Text="GABINETE"></asp:Label>
    <br />
        <asp:Label ID="Label13" runat="server" Text="Modelo: "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:Label ID="Label14" runat="server" Text="Tipo forma"></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:Label ID="Label15" runat="server" Text="Marca: "></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="180px">
        </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label35" runat="server" Text="CPU Generico"></asp:Label>
    <br />
    <asp:Label ID="Label36" runat="server" Text="Tipo CPU Generico"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label37" runat="server" Text="Modelo"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label38" runat="server" Text="Descripcion"></asp:Label>
    <asp:TextBox ID="TextBox19" runat="server" Height="68px" Width="381px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <p>
        <asp:Label ID="Label16" runat="server" Text="MOUSE"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label17" runat="server" Text="Conector: "></asp:Label>
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label18" runat="server" Text="Marca:"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList5" runat="server" Height="16px" Width="209px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label19" runat="server" Text="TECLADO"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label20" runat="server" Text="Conector: "></asp:Label>
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label21" runat="server" Text="Marca: "></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList6" runat="server" Height="16px" Width="204px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label22" runat="server" Text="DISCO DURO"></asp:Label>
    </p>
    <asp:Label ID="Label23" runat="server" Text="Tipo de Disco"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label24" runat="server" Text="Conector"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label25" runat="server" Text="Capacidad"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" Width="168px">
    </asp:DropDownList>
&nbsp;<br />
    <asp:Label ID="Label27" runat="server" Text="Número de Inventario"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox14" runat="server" Height="16px" Width="185px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label28" runat="server" Text="LABORATORIO"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label29" runat="server" Text="Nombre del Laboratorio: "></asp:Label>
    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="201px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label30" runat="server" Text="Número de Inventario: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label31" runat="server" Text="IMAGENES"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label32" runat="server" Text="Imagen 1:   "></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Label ID="Label33" runat="server" Text="Imagen 2:   "></asp:Label>
    <asp:FileUpload ID="FileUpload2" runat="server" />
    <br />
    <asp:Label ID="Label34" runat="server" Text="Imagen 3:   "></asp:Label>
    <asp:FileUpload ID="FileUpload3" runat="server" />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Height="47px" Text="Reguistrar PC" Width="294px" />
    <br />
    <br />
</asp:Content>
