<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FinalProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" type="text/css" href="css/styles.css" media="screen" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@200&family=Raleway:wght@100&family=Roboto:wght@100&display=swap" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<body>
    <h1>Bienvenido a PetShop</h1>
    <form id="form1" runat="server" class="logginform">
        <%--<div>
            <asp:DropDownList ID="DropDownList1" runat="server"> 
            </asp:DropDownList>
        </div>--%>
        <div class="class-log">
            <div>Inicia Sesion para poder hacer uso del sistema de la mejor manera</div>
            <asp:Label Text="Correo o usuario:" runat="server" />
            <%--<asp:TextBox runat="server" placeholder="example@example.com" ID="txtBoxUser"/>--%>
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
    </form>
</body>
</html>
