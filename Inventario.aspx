<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="FinalProject.Inventario" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label  runat="server">ID producto: </asp:Label><asp:TextBox runat="server" ID="txtIdProducto"></asp:TextBox>
    <asp:Label  runat="server">Nombre: </asp:Label><asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
    <asp:Label  runat="server">Precio: </asp:Label><asp:TextBox runat="server" ID="txtPrecio"></asp:TextBox>
    <asp:Label  runat="server">Marca: </asp:Label><asp:TextBox runat="server" ID="txtMarca"></asp:TextBox>
    <asp:Label  runat="server">Existencia: </asp:Label><asp:TextBox runat="server" ID="txtExistencia"></asp:TextBox>
    <asp:Label  runat="server">Estatus: </asp:Label><asp:TextBox runat="server" ID="txtEstatus"></asp:TextBox>
    <asp:Label  runat="server">Fecha: </asp:Label><asp:TextBox runat="server" ID="txtFecha"></asp:TextBox>
    <asp:Label  runat="server">Descripción: </asp:Label><asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
    <asp:Button runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
    <asp:Button runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
    <asp:Button runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
    <asp:Button runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
    <asp:Label  runat="server">ID producto: </asp:Label><asp:TextBox runat="server" ID="txtIdProducto2"></asp:TextBox>
    <asp:Button runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
    <br />
    NOTA: Al dejar vacío el "Nombre del producto" se buscarán todos los registros
    <asp:Label  runat="server">Nombre del producto: </asp:Label><asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
    <asp:Button runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>

</asp:Content>
