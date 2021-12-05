<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FinalProject.Registro" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label  runat="server">Nombre</asp:Label><asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
    <asp:Label runat="server">Apellido paderno</asp:Label><asp:TextBox runat="server" ID="txtApellidoPaterno"></asp:TextBox>
    <asp:Label runat="server">Apellido materno</asp:Label><asp:TextBox runat="server" ID="txtApellidoMaterno"></asp:TextBox>
    <asp:Label runat="server">Teléfono</asp:Label><asp:TextBox runat="server" ID="txtTelefono"></asp:TextBox>
    <asp:Label runat="server">Tipo de empleado</asp:Label><asp:TextBox runat="server" ID="txtTipoEmpleado"></asp:TextBox>
    <asp:Label runat="server">Fecha de ingreso</asp:Label><asp:TextBox runat="server" ID="txtFechaIngreso"></asp:TextBox>
    <asp:Label runat="server">Estatus</asp:Label><asp:TextBox runat="server" ID="txtEstatus"></asp:TextBox>
    <asp:Label runat="server">Correo electrónico</asp:Label><asp:TextBox runat="server" ID="txtCorreo"></asp:TextBox>
    <asp:Label runat="server">Contraseña</asp:Label><asp:TextBox runat="server" ID="txtContrasenia"></asp:TextBox>
    <asp:Label runat="server">Confirma tu contraseña</asp:Label><asp:TextBox runat="server" ID="txtConfirmaContrasenia"></asp:TextBox>
    Acepto los términos y condiciones

    <asp:Button runat="server" Text="Registrarse"/>
</asp:Content>
