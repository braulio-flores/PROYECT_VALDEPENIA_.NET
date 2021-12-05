<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="FinalProject.Promociones" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col">
            <h1>Promociones</h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Nombre de la promoción: <asp:TextBox runat="server" ID="txtNombre"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Porcentaje: <asp:TextBox runat="server" ID="txtPorcentaje"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Descripción: <asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Fecha de inicio: <asp:TextBox runat="server" ID="txtFechaInicio"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Fecha de término: <asp:TextBox runat="server" ID="txtFechaTermino"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Estatus: <asp:DropDownList runat="server" ID="ddlEstatus"></asp:DropDownList>
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
    Nombre de promoción: <asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
    <asp:Button runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>
</asp:Content>
