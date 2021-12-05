<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="FinalProject.Inventario" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col">
            <h1>Inventario</h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Nombre: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombre"></asp:TextBox> 
        </div>
    </div>
    <div class="row">
        <div class="col">
            Precio: <asp:TextBox ForeColor="Black" runat="server" ID="txtPrecio"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Marca: <asp:TextBox ForeColor="Black" runat="server" ID="txtMarca"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Existencia: <asp:TextBox ForeColor="Black" runat="server" ID="txtExistencia"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Estatus: <asp:DropDownList runat="server" ID="ddlEstatus"></asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Fecha: <asp:TextBox ForeColor="Black" runat="server" ID="txtFecha"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <asp:Button ForeColor="Black" runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
            <asp:Button ForeColor="Black" runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
            <asp:Button ForeColor="Black" runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
            <asp:Button ForeColor="Black" runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Clave del producto: <asp:TextBox ForeColor="Black" runat="server" ID="txtIdProducto2"></asp:TextBox>
            <asp:Button runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
        </div>
    </div>
    <br />
    NOTA: Al dejar vacío el "Nombre del producto" se buscarán todos los registros
    <asp:Label runat="server">Nombre del producto: </asp:Label><asp:TextBox ForeColor="Black" runat="server" ID="txtNombreProducto"></asp:TextBox>
    <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>

</asp:Content>
