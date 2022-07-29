<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="FronEnd_N3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Seccio para Registra el Tipo de RAM</h4>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Escria que tipo es=&gt;"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" />
&nbsp;&nbsp;
        <asp:Label ID="msj1" runat="server"></asp:Label>
    </p>
    <br />
    <h4>Seccion para Registrar la RAM</h4>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Escriba la Capacidad: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Escriba la Velocidad: "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Seleccione el tipo de RAM:  "></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="149px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" />
        <asp:Label ID="msj2" runat="server"></asp:Label>
    </p>
    <br />
    <h4>Seccion para Registrar el Gabinete</h4>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Escriba el Modelo: "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Escribe su Tipo de Froma:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Seleccione la Marca"></asp:Label>
        <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="192px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button3" runat="server" Text="Agregar " OnClick="Button3_Click" />
&nbsp;&nbsp;
        <asp:Label ID="msj3" runat="server"></asp:Label>
    </p>
    <br />
    <h4>Seccion para Registrar el Modelo del CPU</h4>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Escriba el Modelo: "></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Seleccione la Marca:  "></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" Height="18px" Width="122px">
        </asp:DropDownList>
&nbsp; </p>
    <p>
        <asp:Button ID="Button4" runat="server" Text="Agregar" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msj4" runat="server"></asp:Label>
    </p>
    <br />
    <h4>Seccion para Registrar el Tipo del CPU</h4>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Escriba su Familia:  "></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Escriba su Velocidad:   "></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Seleccione el Modelo   "></asp:Label>
        <asp:DropDownList ID="DropDownList4" runat="server" Height="17px" Width="112px">
        </asp:DropDownList>
    </p>
    <p>
        <asp:Button ID="Button5" runat="server" Text="Agregar" />
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msj5" runat="server"></asp:Label>
    </p>
    <br />
    <h4>Seccion para Registrar el CPU Generico</h4>
    <br />
    <asp:Label ID="Label13" runat="server" Text="Escriba el Modelo:   "></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Seleccione el Modelo del Gabinete"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList5" runat="server" Height="19px" Width="123px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label37" runat="server" Text="Seleccione el Tipo del Gabinete"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList18" runat="server" Height="19px" Width="123px">
    </asp:DropDownList>
&nbsp;<br />
    <asp:Label ID="Label15" runat="server" Text="Seleccione la Capacidad de la RAM"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList6" runat="server" Height="19px" Width="119px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label38" runat="server" Text="Seleccione la Velocidad de la RAM"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList19" runat="server" Height="19px" Width="119px">
    </asp:DropDownList>
    <br />
&nbsp;<asp:Label ID="Label16" runat="server" Text="Seleccione la Familia del CPU  "></asp:Label>
    <asp:DropDownList ID="DropDownList7" runat="server" Height="18px" Width="101px">
    </asp:DropDownList>
    &nbsp;<asp:Label ID="Label39" runat="server" Text="Seleccione la Velicidad del CPU  "></asp:Label>
    <asp:DropDownList ID="DropDownList20" runat="server" Height="18px" Width="101px">
    </asp:DropDownList>
    <br />
    <asp:Button ID="Button6" runat="server" Text="Agregar" />
&nbsp;&nbsp;
    <asp:Label ID="msj6" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Resgistrar el Mouse</h4>
    <br />
    <asp:Label ID="Label17" runat="server" Text="Escriba el Conector"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label18" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj7" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Registrar el Teclado</h4>
    <br />
    <asp:Label ID="Label19" runat="server" Text="Escriba el Conetor:  "></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label20" runat="server" Text="Seleccione la Marca: "></asp:Label>
    &nbsp;<asp:DropDownList ID="DropDownList9" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Button ID="Button8" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj8" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Registrar el Monitor</h4>
    <br />
    <asp:Label ID="Label21" runat="server" Text="Escriba el Conetor:  "></asp:Label>
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label22" runat="server" Text="Escriba el Tamaño:  "></asp:Label>
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label23" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList10" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;<br />
    <asp:Button ID="Button9" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj9" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Registrar el Disco Duro</h4>
    <asp:Label ID="Label24" runat="server" Text="Escriba el Tipo"></asp:Label>
&nbsp;&nbsp;
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label25" runat="server" Text="Escriba el Conetor:  "></asp:Label>
    &nbsp;
    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Escriba la Capacidad"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label27" runat="server" Text="Seleccione la Marca: "></asp:Label>
    &nbsp;<asp:DropDownList ID="DropDownList11" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    <br />
    <asp:Button ID="Button10" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj10" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Resgitrar la Cantida de Disco Duro</h4>
    <br />
    <asp:Label ID="Label28" runat="server" Text="Seleccione el Disco Duro:  "></asp:Label>
    <asp:DropDownList ID="DropDownList12" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    &nbsp;
    <asp:Label ID="Label29" runat="server" Text="Escriba la Cantidad:  "></asp:Label>
    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label30" runat="server" Text="Escriba el Numero de Inventario: "></asp:Label>
&nbsp;<asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="Button11" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj11" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Registra un Laboratorio</h4>
    <asp:Label ID="Label31" runat="server" Text="Escriba el Nombre del Laboratorio: "></asp:Label>
    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
&nbsp;
    <asp:Button ID="Button12" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj12" runat="server"></asp:Label>
    <br />
    <h4>Seccion para Registrar la Computadora Final</h4>
    <asp:Label ID="Label41" runat="server" Text="Escriba el Número de Serie: "></asp:Label>
    <asp:TextBox ID="TextBox20" runat="server" Width="212px"></asp:TextBox>
    <br />

    <asp:Label ID="Label32" runat="server" Text="Seleccione el Teclado:  "></asp:Label>
    <asp:DropDownList ID="DropDownList13" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label34" runat="server" Text="Seleccione el Mouse:  "></asp:Label>
    <asp:DropDownList ID="DropDownList15" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;<br />
    <asp:Label ID="Label33" runat="server" Text="Seleccione los Conectores del Monitor:  "></asp:Label>
    <asp:DropDownList ID="DropDownList14" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    &nbsp;
    <asp:Label ID="Label40" runat="server" Text="Seleccione el Tamaño del Monitor:  "></asp:Label>
    <asp:DropDownList ID="DropDownList21" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label35" runat="server" Text="Seleccione el CPU:  "></asp:Label>
    <asp:DropDownList ID="DropDownList16" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label36" runat="server" Text="Seleccione el Laboratorio:  "></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList17" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="Button13" runat="server" Text="Agregar" />
&nbsp;
    <asp:Label ID="msj13" runat="server"></asp:Label>
    
</asp:Content>
