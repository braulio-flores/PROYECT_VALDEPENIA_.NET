<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos.aspx.cs" Inherits="FinalProject.Gastos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <asp:Label  runat="server">Tipo de gasto: </asp:Label><asp:TextBox runat="server" ID="txtTipoGasto"></asp:TextBox>
    <asp:Label  runat="server">Fecha: </asp:Label><asp:TextBox runat="server" ID="txtFecha"></asp:TextBox>
    <asp:Label  runat="server">Total: </asp:Label><asp:TextBox runat="server" ID="txtTotal"></asp:TextBox>
    <asp:Label  runat="server">Descripción: </asp:Label><asp:TextBox runat="server" ID="txtDescripcion"></asp:TextBox>
    <asp:Button runat="server" Text="Guardar"/>
    <asp:Button runat="server" Text="Modificar"/>
    <asp:Button runat="server" Text="Eliminar"/>
    <asp:Button runat="server" Text="Limpiar"/>
    <asp:TextBox runat="server" ID="txtBuscar"></asp:TextBox>
    <asp:Button runat="server" Text="Buscar" ID="btnBuscar" Onclick="btnBuscar_Click"/>
</asp:Content>
