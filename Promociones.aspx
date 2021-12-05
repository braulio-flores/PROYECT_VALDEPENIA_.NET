<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="FinalProject.Promociones" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label  runat="server">Nombre de la promoción: </asp:Label><asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
    <asp:Label  runat="server">Porcentaje: </asp:Label><asp:TextBox runat="server" ID="txtPorcentaje"></asp:TextBox>
    <asp:Label  runat="server">Descripción: </asp:Label><asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
    <asp:Label  runat="server">Fecha de inicio: </asp:Label><asp:TextBox runat="server" ID="txtFechaInicio"></asp:TextBox>
    <asp:Label  runat="server">Fecha de término: </asp:Label><asp:TextBox runat="server" ID="txtFechaTermino"></asp:TextBox>
    <asp:Label  runat="server">Estatus: </asp:Label><asp:TextBox runat="server" ID="txtEstatus"></asp:TextBox>
    <asp:Button runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
    <asp:Button runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
    <asp:Button runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
    <asp:Button runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
    <asp:Label  runat="server">ID Socio: </asp:Label><asp:TextBox runat="server" ID="txtIdSocio2"></asp:TextBox>
    <asp:Button runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
    <br />
    <asp:Label  runat="server">Nombre de promoción: </asp:Label><asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
    <asp:Button runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>
</asp:Content>
