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
            Apellido paderno: <asp:TextBox ForeColor="Black" runat="server" ID="txtApellidoPaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Apellido materno: <asp:TextBox ForeColor="Black" runat="server" ID="txtApellidoMaterno"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Teléfono: <asp:TextBox ForeColor="Black" runat="server" ID="txtTelefono"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Tipo de empleado: <asp:TextBox ForeColor="Black" runat="server" ID="txtTipoEmpleado"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Fecha de ingreso: <asp:TextBox ForeColor="Black" runat="server" ID="txtFechaIngreso"></asp:TextBox>
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
            Contraseña: <asp:TextBox ForeColor="Black" runat="server" ID="txtContrasenia"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Confirma tu contraseña: <asp:TextBox ForeColor="Black" runat="server" ID="txtConfirmaContrasenia"></asp:TextBox>
        </div>
    </div> 
    <div class="row">
        <div class="col">
            Acepto los términos y condiciones
        </div>
    </div> 

    <asp:Button ForeColor="Black" runat="server" Text="Registrarse"/>
</asp:Content>
