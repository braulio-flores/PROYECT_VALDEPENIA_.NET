<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Membresia.aspx.cs" Inherits="FinalProject.Membresia" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col">
            <h1>Membresía</h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Nombre(s): <asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Apellido Paterno: <asp:TextBox runat="server" ID="txtApellidoPaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Apellido Materno: <asp:TextBox runat="server" ID="txtApellidoMaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Fecha de nacimiento: <asp:TextBox runat="server" ID="txtFechaNacimiento"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Teléfono: <asp:TextBox runat="server" ID="txtTelefono"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Correo electrónico: <asp:TextBox runat="server" ID="txtCorreo"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Estatus: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlEstatus"></asp:DropDownList>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            <asp:Button runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
            <asp:Button runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
            <asp:Button runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
            <asp:Button runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>        
        </div>
    </div>
    <div class="row">
        <div class="col">
            ID Socio: <asp:TextBox runat="server" ID="txtIdSocio2"></asp:TextBox>
            <asp:Button runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
        </div>
    </div>
    <br />
    NOTA: Al dejar vacío el "Nombre del socio" se buscarán todos los registros
    Nombre del socio: <asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
</asp:Content>
