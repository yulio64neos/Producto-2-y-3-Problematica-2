<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="FronEnd_N3.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    </p>
    <h4>Actualizacion Modelo del CPU </h4>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Seleccione el modelo del CPU =&gt;"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="129px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="|| Coloque el Modelo: "></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="148px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label4" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" Height="19px" Width="123px">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" Text="Actualizar Modelo CPU" Width="203px" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="msj1" runat="server"></asp:Label>
    <br />
    <h4>Actualizar el Tipo del CPU</h4>
    <br />

    <asp:Label ID="Label5" runat="server" Text="Seleccione la Famila=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList3" runat="server">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label6" runat="server" Text="Seleccione su Velocida=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList4" runat="server">
    </asp:DropDownList>
    <br />

    <br />
    <asp:Label ID="Label7" runat="server" Text="Escriba la Familia: "></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="113px"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label8" runat="server" Text="Escriba la Velocida: "></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Seleccione el Modelo"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList5" runat="server" Width="141px">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Actializar el Tipo del CPU" OnClick="Button2_Click" />
    &nbsp;<br />
    <asp:Label ID="msj2" runat="server"></asp:Label>
    <br />
    <h4>Actualizar Gabinete</h4>
    <br />
    <asp:Label ID="Label10" runat="server" Text="Seleccione el Modelo=&gt; "></asp:Label>
    <asp:DropDownList ID="DropDownList6" runat="server" Height="20px" Width="113px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label11" runat="server" Text="Seleccione el Tipo de la Forma=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList7" runat="server" Height="16px" Width="117px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label12" runat="server" Text="Escriba el Modelo:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label13" runat="server" Text="Escriba su Tipo de Forma: "></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label14" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList8" runat="server" Height="16px" Width="171px">
    </asp:DropDownList>
    <asp:Button ID="Button3" runat="server" Text="Actualizar Gabinete" OnClick="Button3_Click" />
    <br />
    <asp:Label ID="msj3" runat="server"></asp:Label>
    <br />
    <h4>Actualizar la RAM</h4>
    <asp:Label ID="Label15" runat="server" Text="Seleccione la Capacida=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList9" runat="server" Height="18px" Width="113px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label16" runat="server" Text="Seleccione la Velocidad=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList10" runat="server" Height="22px" Width="125px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label17" runat="server" Text="Coloque su =&gt;Capacida"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label18" runat="server" Text="Velocidad:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label19" runat="server" Text="Seleccione el tipo: "></asp:Label>
    <asp:DropDownList ID="DropDownList11" runat="server" Height="20px" Width="124px">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button4" runat="server" Text="Actualizar RAM" OnClick="Button4_Click" />
    <br />
    <asp:Label ID="msj4" runat="server"></asp:Label>
    <br />
    <h4>Actualizar Monitor</h4>
    <asp:Label ID="Label20" runat="server" Text="Seleccione el Conector=&gt;"></asp:Label>
    <asp:DropDownList ID="DropDownList12" runat="server" Height="20px" Width="112px">
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:Label ID="Label21" runat="server" Text="Seleccione la Marca=&gt;"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList13" runat="server" Height="27px" Width="150px">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label22" runat="server" Text="Escriba =&gt; Conector:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label23" runat="server" Text="Tamaño: "></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;
    <asp:Label ID="Label24" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList14" runat="server" Height="16px" Width="117px">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button5" runat="server" Text="Actualizar Monitor" OnClick="Button5_Click" />
    <br />
    <br />
    <asp:Label ID="msj5" runat="server"></asp:Label>
    <br />
    <h4>Actualizar Teclado</h4>
    <br />
    <asp:Label ID="Label25" runat="server" Text="Indica el conector=&gt;"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList15" runat="server" Height="19px" Width="142px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label26" runat="server" Text="Indica la Marca=&gt;"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList16" runat="server" Height="16px" Width="166px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label27" runat="server" Text="Escriba su comector:"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server" Height="19px" Width="169px"></asp:TextBox>
&nbsp;&nbsp;
    <asp:Label ID="Label28" runat="server" Text="Seleccione la Marca"></asp:Label>
    :
    <asp:DropDownList ID="DropDownList17" runat="server" Height="16px" Width="114px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button6" runat="server" Text="Actualizar Teclado" OnClick="Button6_Click" />
    <br />
    <asp:Label ID="msj6" runat="server"></asp:Label>
    <br />
    <h4>Actualizar Mouse</h4>
    <p>
        <asp:Label ID="Label29" runat="server" Text="Indique el Conector=&gt;"></asp:Label>
        <asp:DropDownList ID="DropDownList18" runat="server" Height="16px" Width="152px">
        </asp:DropDownList>
&nbsp;&nbsp;
        <asp:Label ID="Label30" runat="server" Text="Y Marca=&gt;"></asp:Label>
        <asp:DropDownList ID="DropDownList19" runat="server" Height="16px" Width="139px">
        </asp:DropDownList>
    </p>
    <asp:Label ID="Label31" runat="server" Text="Escriba el Conector:"></asp:Label>
&nbsp;
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label32" runat="server" Text="Seleccione la Marca: "></asp:Label>
    <asp:DropDownList ID="DropDownList20" runat="server" Height="16px" Width="131px">
    </asp:DropDownList>
&nbsp;
    <asp:Button ID="Button7" runat="server" Text="Actualizar Mouse" OnClick="Button7_Click" />
&nbsp;<br />
    <asp:Label ID="msj7" runat="server"></asp:Label>
    <br />
    <h4>Actualizar Computadora Final</h4>
        <asp:Label ID="Label33" runat="server" Text="Seleccione el Numero de Inventario que desee Actualizar=&gt;"></asp:Label>
        &nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList21" runat="server" Height="16px" Width="212px">
    </asp:DropDownList>
    <br />
    <h5>Inidique los cambios que se aplicaran</h5>
        <asp:Label ID="Label34" runat="server" Text="Seleccione los Conectores del Monitor=&gt;"></asp:Label>
        &nbsp;
    <asp:DropDownList ID="DropDownList22" runat="server" Height="16px" Width="212px">
    </asp:DropDownList>
&nbsp;
        <asp:Label ID="Label35" runat="server" Text="Seleccione el tamaño del Monitor=&gt;"></asp:Label>
        &nbsp;
    <asp:DropDownList ID="DropDownList23" runat="server" Height="16px" Width="212px">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label36" runat="server" Text="Seleccione los Conectores del Mouse=&gt;"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList24" runat="server" Height="16px" Width="149px">
    </asp:DropDownList>
&nbsp;
    <asp:Label ID="Label37" runat="server" Text="Seleccione los Conectores del Teclado=&gt;"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList25" runat="server" Height="16px" Width="156px">
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label38" runat="server" Text="Seleccione el Modelo del CPU Generico=&gt;"></asp:Label>
&nbsp;
    <asp:DropDownList ID="DropDownList26" runat="server" Height="18px" Width="192px">
    </asp:DropDownList>
&nbsp;<br />
    <asp:Label ID="Label39" runat="server" Text="Seleccione en que Laboratorio se rubicara=&gt;"></asp:Label>
&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList27" runat="server" Height="16px" Width="212px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="Label40" runat="server" Text="Escriba el numero de Serie: "></asp:Label>
    <asp:TextBox ID="TextBox12" runat="server" Height="20px" Width="180px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label41" runat="server" Text="Decriba el porque de los cambios"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox13" runat="server" Height="115px" Width="590px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Actualizar PC Final" />
    <br />
    <br />
    <asp:Label ID="msj8" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

    </asp:Content>
