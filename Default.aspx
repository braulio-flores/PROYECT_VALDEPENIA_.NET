﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div >
        <br /><br /><br /><br /><%--QUITAR ESTOS SALTOS DE LINEA CON STILOS--%>

        <h1>PAGINA PRINCIPAL DEL USUARIO, EN ESTA PAGINA SE VISUALIZARAN LOS PRODUCTOS PARA SU CONSUMO </h1>
        <asp:Label runat="server" ID="welcomeLabel" />
        
        <h2>Productos Disponibles</h2>
        <div class="dispProduct">
        <asp:Label id="contProduct" runat="server"/>
        </div>

        <h2>Promociones Disponibles</h2>
        <div class="dispProduct">
        <asp:Label id="contPromoc" runat="server" />
        </div>
        
    </div>

</asp:Content>
