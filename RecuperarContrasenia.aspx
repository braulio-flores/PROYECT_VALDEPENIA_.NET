<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecuperarContrasenia.aspx.cs" Inherits="FinalProject.RecuperarContrasenia" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />    
<div class="row">
        <div class="col">
            <h1>Recuperación de contraseña</h1>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Ingrese una nueva contraseña: <asp:TextBox runat="server" ID="txtContrasenia"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Confirmar nueva contraseña: <asp:TextBox runat="server" ID="txtConfirmar"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            <asp:Button runat="server" Text="Restaurar" ID="BtnRestaurar" OnClick="BtnRestaurar_Click"/>
        </div>
    </div> 
    <br />
    Nombre de promoción: <asp:TextBox runat="server" ID="txtNombreProducto"></asp:TextBox>
</asp:Content>
