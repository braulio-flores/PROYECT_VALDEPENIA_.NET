<%@ Page Title="Gastos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos.aspx.cs" Inherits="FinalProject.Gastos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col">
            <h1>Gastos</h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Tipo de gasto: <asp:TextBox ForeColor="Black" runat="server" ID="txtTipoGasto"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Fecha: <asp:Calendar ForeColor="Beige" runat="server" ID="dtFechaGasto"></asp:Calendar>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Total: <asp:TextBox ForeColor="Black" runat="server" ID="txtTotal"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <asp:Button ForeColor="Black" runat="server" Text="Guardar"/>
            <asp:Button ForeColor="Black" runat="server" Text="Modificar"/>
            <asp:Button ForeColor="Black" runat="server" Text="Eliminar"/>
            <asp:Button ForeColor="Black" runat="server" Text="Limpiar"/>
        </div>
    <div class="row">
        <div class="col">
            <asp:TextBox ForeColor="Black" runat="server" ID="txtBuscar"></asp:TextBox>
            <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="btnBuscar" Onclick="btnBuscar_Click"/>
        </div>
    </div>
</asp:Content>
