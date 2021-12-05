<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperarContrasenia.aspx.cs" Inherits="FinalProject.RecuperarContrasenia" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Recuperación de contraseña</h1>
    <asp:Label  runat="server">Ingrese una nueva contraseña:</asp:Label>
    <asp:TextBox runat="server" ID="txtContrasenia"></asp:TextBox>
    <asp:Label  runat="server">Confirmar nueva contraseña: </asp:Label><asp:TextBox runat="server" ID="txtConfirmar"></asp:TextBox>
    <asp:Button runat="server" Text="Restaurar" ID="BtnRestaurar" OnClick="BtnRestaurar_Click"/>
    <br />
    <asp:Label  runat="server">Nombre de promoción: </asp:Label><asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
</asp:Content>
