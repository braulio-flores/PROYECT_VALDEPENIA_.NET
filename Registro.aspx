<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FinalProject.Registro" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col">
            <h1>Registro</h1>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Nombre: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombre"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Apellido: <asp:TextBox ForeColor="Black" runat="server" ID="txtApellidoPaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Fecha Nacimiento: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaNac"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Teléfono: <asp:TextBox ForeColor="Black" runat="server" ID="txtTelefono"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Tipo de empleado: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlTipoEmpleado"></asp:DropDownList>
        </div>
    </div>
    <div class="row">
        <div class="col">
            Estatus: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlEstatus"></asp:DropDownList>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Correo electrónico: <asp:TextBox ForeColor="Black" runat="server" ID="txtCorreo"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Contraseña: <asp:TextBox TextMode="Password" ForeColor="Black" runat="server" ID="txtContrasenia"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Confirma tu contraseña: <asp:TextBox TextMode="Password" ForeColor="Black" runat="server" ID="txtConfirmaContrasenia"></asp:TextBox>
        </div>
    </div> 

    <asp:Button ForeColor="Black" runat="server" Text="Registrarse" OnClick="SingUp"/>
    <%--<asp:Label runat="server" ID="estatusRegistro"/>--%>
    <%--<asp:TextBox runat="server" ID="estatusRegistro"></asp:TextBox>--%>
    <asp:Label runat="server" ID="confirmLabelCcontent"  class="confirmLabel" Visible="false">
        <asp:Label runat="server" ID="estatusRegistro2"/><br />
        <a href="Login.aspx">Iniciar Sesión</a>
    </asp:Label>
    
    
</asp:Content>
