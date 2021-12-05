<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Membresia.aspx.cs" Inherits="FinalProject.Membresia" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label  runat="server">ID Socio: </asp:Label><asp:TextBox runat="server" ID="txtIdSoxio"></asp:TextBox>
    <asp:Label  runat="server">Nombre(s): </asp:Label><asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
    <asp:Label  runat="server">Apellido Paterno: </asp:Label><asp:TextBox runat="server" ID="txtApellidoPaterno"></asp:TextBox>
    <asp:Label  runat="server">Apellido Materno: </asp:Label><asp:TextBox runat="server" ID="txtApellidoMaterno"></asp:TextBox>
    <asp:Label  runat="server">Fecha de nacimiento: </asp:Label><asp:TextBox runat="server" ID="txtFechaNacimiento"></asp:TextBox>
    <asp:Label  runat="server">Teléfono: </asp:Label><asp:TextBox runat="server" ID="txtTelefono"></asp:TextBox>
    <asp:Label  runat="server">Correo electrónico: </asp:Label><asp:TextBox runat="server" ID="txtCorreo"></asp:TextBox>
    <asp:Label  runat="server">Estatus: </asp:Label><asp:TextBox runat="server" ID="txtEstatus"></asp:TextBox>
    <asp:Button runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
    <asp:Button runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
    <asp:Button runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
    <asp:Button runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
    <asp:Label  runat="server">ID Socio: </asp:Label><asp:TextBox runat="server" ID="txtIdSocio2"></asp:TextBox>
    <asp:Button runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
    <br />
    NOTA: Al dejar vacío el "Nombre del socio" se buscarán todos los registros
    <asp:Label  runat="server">Nombre del socio: </asp:Label><asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
</asp:Content>
