<%@ Page Title="" Language="C#" MasterPageFile="~/Index.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="FronEnd_N3.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <p class="fs-1">Actualizacion Modelo del CPU </p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label2" runat="server" Text="Seleccione el modelo de la CPU" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label3" runat="server" Text="Coloque el Modelo: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label4" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Actualizar Modelo CPU" OnClick="Button1_Click"  CssClass="btn btn-success"/>
            <asp:Label ID="msj1" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar el Tipo del CPU</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label5" runat="server" Text="Seleccione la Famila: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label6" runat="server" Text="Seleccione su Velocidad:" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label7" runat="server" Text="Escriba la Familia: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label8" runat="server" Text="Escriba la Velocida: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label9" runat="server" Text="Seleccione el Modelo" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button2" runat="server" Text="Actializar el Tipo del CPU" OnClick="Button2_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj2" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar Gabinete</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label10" runat="server" Text="Seleccione el Modelo: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label11" runat="server" Text="Seleccione el Tipo de la Forma:" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label12" runat="server" Text="Escriba el Modelo:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-select"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label13" runat="server" Text="Escriba su Tipo de Forma: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-select"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label14" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList8" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button3" runat="server" Text="Actualizar Gabinete" OnClick="Button3_Click" CssClass="btn btn-success" />
            <asp:Label ID="msj3" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar la RAM</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label15" runat="server" Text="Seleccione la Capacidad" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList9" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label16" runat="server" Text="Seleccione la Velocidad" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList10" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label17" runat="server" Text="Coloque su Capacidad" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label18" runat="server" Text="Velocidad:" CssClass="form-label"></asp:Label>
                ;<asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label19" runat="server" Text="Seleccione el tipo: "  CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList11" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button4" runat="server" Text="Actualizar RAM" OnClick="Button4_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj4" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar Monitor</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label20" runat="server" Text="Seleccione el Conector" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList12" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label21" runat="server" Text="Seleccione la Marca" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList13" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label22" runat="server" Text="Escriba conector:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label23" runat="server" Text="Tamaño: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label24" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList14" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button5" runat="server" Text="Actualizar Monitor" OnClick="Button5_Click"  CssClass="btn btn-success"/>
            <asp:Label ID="msj5" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar Teclado</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label25" runat="server" Text="Indica el conector" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList15" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label26" runat="server" Text="Indica la Marca" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList16" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label27" runat="server" Text="Escriba su comector:"  CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" CssClass="form-select"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label28" runat="server" Text="Seleccione la Marca" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList17" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button6" runat="server" Text="Actualizar Teclado" OnClick="Button6_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj6" runat="server" CssClass="form-text"></asp:Label>        
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar Mouse</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label29" runat="server" Text="Indique el Conector" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList18" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label30" runat="server" Text="Indique la Marca" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList19" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label31" runat="server" Text="Escriba el Conector:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label32" runat="server" Text="Seleccione la Marca: " CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList20" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <asp:Button ID="Button7" runat="server" Text="Actualizar Mouse" OnClick="Button7_Click" CssClass="btn btn-success"/>
            <asp:Label ID="msj7" runat="server" CssClass="form-text"></asp:Label>
        </div>
    </div>
    <div class="row">
        <p class="fs-1">Actualizar Computadora Final</p>
        <div class="col-sm-12">
            <div class="mb-3">
                <asp:Label ID="Label33" runat="server" Text="Seleccione el Numero de Inventario que desee Actualizar" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList21" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <p>Inidique los cambios que se aplicaran</p>
                <asp:Label ID="Label34" runat="server" Text="Seleccione los Conectores del Monitor" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList22" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label35" runat="server" Text="Seleccione el tamaño del Monitor" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList23" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label36" runat="server" Text="Seleccione los Conectores del Mouse" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList24" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label37" runat="server" Text="Seleccione los Conectores del Teclado" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList25" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label38" runat="server" Text="Seleccione el Modelo del CPU Generico" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList26" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label39" runat="server" Text="Seleccione en que Laboratorio se rubicara" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList27" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label42" runat="server" Text="Escriba la cantidad de Discos" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label43" runat="server" Text="Seleccione el tipo de Disco Duro" CssClass="form-label"></asp:Label>
                <asp:DropDownList ID="DropDownList28" runat="server" CssClass="form-select">
                </asp:DropDownList>
            </div>
            <div class="mb-3">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn" />
                <asp:FileUpload ID="FileUpload2" runat="server" CssClass="btn" />
                <asp:FileUpload ID="FileUpload3" runat="server" CssClass="btn" />
            </div>
            <div class="mb-3">
                <asp:Label ID="Label40" runat="server" Text="Escriba el numero de Serie: " CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Label ID="Label41" runat="server" Text="Decriba el porque de los cambios" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="mb-3">
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Actualizar PC Final" CssClass="btn btn-success"/>
                <asp:Label ID="msj8" runat="server" CssClass="form-text"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
