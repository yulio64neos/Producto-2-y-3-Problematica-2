<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="FronEnd_N3.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <p class="fs-1">Sección para Registra el Tipo de RAM</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label1" runat="server" Text="Escriba que tipo de la RAM" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="Button1_Click" CssClass="btn btn-success" />
            <asp:Label ID="msj1" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar la RAM</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Escriba la Capacidad: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Escriba la Velocidad: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Seleccione el tipo de RAM:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="Button2_Click" CssClass="btn btn-success" />
            <asp:Label ID="msj2" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Gabinete</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" Text="Escriba el Modelo: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label6" runat="server" Text="Escribe su Tipo de Froma:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label7" runat="server" Text="Seleccione la Marca"  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button3" runat="server" Text="Agregar " OnClick="Button3_Click"  CssClass="btn btn-success"/>
            <asp:Label ID="msj3" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Modelo del CPU</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label8" runat="server" Text="Escriba el Modelo: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label9" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server"  CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button4" runat="server" Text="Agregar" OnClick="Button4_Click"  CssClass="btn btn-success"/>
            <asp:Label ID="msj4" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Tipo del CPU</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label10" runat="server" Text="Escriba su Familia:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label11" runat="server" Text="Escriba su Velocidad: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label12" runat="server" Text="Seleccione el Modelo "></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button5" runat="server" Text="Agregar" OnClick="Button5_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj5" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el CPU Generico</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label13" runat="server" Text="Escriba el Modelo:  "  CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server"  CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label14" runat="server" Text="Seleccione el Modelo del Gabinete"  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label37" runat="server" Text="Seleccione el Tipo del Gabinete"  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList18" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label15" runat="server" Text="Seleccione la Capacidad de la RAM"  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList6" runat="server"  CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label38" runat="server" Text="Seleccione la Velocidad de la RAM" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList19" runat="server"  CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label16" runat="server" Text="Seleccione la Familia del CPU  "  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList7" runat="server"  CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label39" runat="server" Text="Seleccione la Velicidad del CPU  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList20" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button6" runat="server" Text="Agregar" OnClick="Button6_Click" CssClass="btn btn-success" />
            <asp:Label ID="msj6" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Resgistrar el Mouse</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label17" runat="server" Text="Escriba el Conector"  CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label18" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button7" runat="server" Text="Agregar" OnClick="Button7_Click"  CssClass="btn btn-success" />
            <asp:Label ID="msj7" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Teclado</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label19" runat="server" Text="Escriba el Conetor:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label20" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button8" runat="server" Text="Agregar" OnClick="Button8_Click"   CssClass="btn btn-success"/>
            <asp:Label ID="msj8" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Monitor</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label21" runat="server" Text="Escriba el Conetor:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label22" runat="server" Text="Escriba el Tamaño:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label23" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button9" runat="server" Text="Agregar" OnClick="Button9_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj9" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar el Disco Duro</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label24" runat="server" Text="Escriba el Tipo" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label25" runat="server" Text="Escriba el Conetor:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label26" runat="server" Text="Escriba la Capacidad" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label27" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
                <asp:Button ID="Button10" runat="server" Text="Agregar" OnClick="Button10_Click" CssClass="btn btn-success"/>
                <asp:Label ID="msj10" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registra un Laboratorio</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label31" runat="server" Text="Escriba el Nombre del Laboratorio: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button12" runat="server" Text="Agregar" OnClick="Button12_Click"  CssClass="btn btn-success"/>
            <asp:Label ID="msj12" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Sección para Registrar la Computadora Final</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label41" runat="server" Text="Escriba el Número de Serie: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label32" runat="server" Text="Seleccione el Teclado:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label34" runat="server" Text="Seleccione el Mouse:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList15" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label33" runat="server" Text="Seleccione los Conectores del Monitor:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList14" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label40" runat="server" Text="Seleccione el Tamaño del Monitor:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList21" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label35" runat="server" Text="Seleccione el CPU:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList16" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label36" runat="server" Text="Seleccione el Laboratorio:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList17" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label28" runat="server" Text="Seleccione el Disco Duro:  " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-control">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label29" runat="server" Text="Escriba la Cantidad:  " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn"/>
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="btn"/>
                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="btn"/>
            </div>
            <asp:Button ID="Button13" runat="server" Text="Agregar" OnClick="Button13_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj13" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>

    <div class="row">
        <p class="fs-1">Sección para Registra un Componete</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label30" runat="server" Text="Escriba el Componente: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="Agregar" CssClass="btn btn-success"/>
            <asp:Label ID="Label42" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>

    <div class="row">
        <p class="fs-1">Sección para Registra una Marca</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label43" runat="server" Text="Escriba la Marca: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Agregar" CssClass="btn btn-success"/>
            <asp:Label ID="Label44" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>

    <div class="row">
        <p class="fs-1">Sección para Registra una Marca con su Componente</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label45" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList22" runat="server"  CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label47" runat="server" Text="Seleccione el Componente: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList23" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <asp:Button ID="Button16" runat="server" OnClick="Button16_Click" Text="Agregar" CssClass="btn btn-success"/>
            <asp:Label ID="Label46" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
</asp:Content>
