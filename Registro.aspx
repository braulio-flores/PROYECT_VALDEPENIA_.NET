<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="FinalProject.Registro" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <div class="">
        <div class="">
            <h1>Registro</h1>
        </div>
    </div>
    <div class="logginForm">
        <div class="class-log">
    <div class="">
        <div class="">
            Nombre: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombre"></asp:TextBox>
        </div>
    </div> 
    <div class="">
        <div class="">
            Apellido: <asp:TextBox ForeColor="Black" runat="server" ID="txtApellidoPaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="">
        <div class="">
            Fecha Nacimiento: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaNac"></asp:TextBox>
        </div>
    </div> 
    <div class="">
        <div class="">
            Teléfono: <asp:TextBox ForeColor="Black" runat="server" ID="txtTelefono"></asp:TextBox>
        </div>
    </div> 
    <div class="">
        <div class="">
            Tipo de empleado: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlTipoEmpleado"></asp:DropDownList>
        </div>
    </div>
    <div class="">
        <div class="">
            Estatus: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlEstatus"></asp:DropDownList>
        </div>
    </div> 
    <div class="">
        <div class="">
            Correo electrónico: <asp:TextBox ForeColor="Black" runat="server" ID="txtCorreo"></asp:TextBox>
        </div>
    </div> 
    <div class="">
        <div class="">
            Contraseña: <asp:TextBox TextMode="Password" ForeColor="Black" runat="server" ID="txtContrasenia"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="">
            Confirma tu contraseña: <asp:TextBox TextMode="Password" ForeColor="Black" runat="server" ID="txtConfirmaContrasenia"></asp:TextBox>
        </div>
    </div> 

    <asp:Button ForeColor="Black" runat="server" Text="Registrarse" OnClick="SingUp"/>
    </div>
</div>
    <%--<asp:Label runat="server" ID="estatusRegistro"/>--%>
    <%--<asp:TextBox runat="server" ID="estatusRegistro"></asp:TextBox>--%>
    <asp:Label runat="server" ID="confirmLabelCcontent"  class="confirmLabel" Visible="false">
        <asp:Label runat="server" ID="estatusRegistro2"/><br />
        <a href="Login.aspx">Iniciar Sesión</a>
    </asp:Label>
    

 
    
</asp:Content>
