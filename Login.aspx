<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Bienvenido a PetShop</h1>
    <div class="logginForm">
        <div class="class-log">
            <div>Inicia sesión para poder hacer uso del sistema</div>
            <asp:Label Text="Correo o usuario: " runat="server" />
            <asp:TextBox runat="server" placeholder="example@example.com" ID="userid"/>
            <br />
            <asp:Label Text="Contraseña:" runat="server" />
            <asp:TextBox ID="txtBoxpass" TextMode="Password" runat="server" />
            <br />
            <asp:Button ID="btnEnv" runat="server" Text="Iniciar Sesión" onclick="loggeo" />
        </div>
        <div>
            <asp:Label runat="server" ID="alertID"/>
        </div>
        <div>
            <ul class="logginUl">
                <li><i class="fas fa fa-utensils"></i><asp:LinkButton id="lnk1" Text="Registrarse" runat="server" OnClick="lnk1_Click" /></li>
                <li><i class="fas fa fa-video"></i><asp:LinkButton id="lnk2" Text="Olvidaste tu contraseña?" runat="server" OnClick="lnk2_Click" /></li>
            </ul>
        </div>
    </div>

</asp:Content>
