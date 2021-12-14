<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Promociones.aspx.cs" Inherits="FinalProject.Promociones" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table style="border-collapse:separate; border-spacing:0 15px;">
        <tr>
            <td colspan="8">
                <h1>Promociones</h1>
                <asp:HiddenField ID="hiddenId" runat="server"/>
            </td>
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">
                Nombre de la promoción: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombre"></asp:TextBox> 
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el nombre de la promoción" ControlToValidate="txtNombre" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
               Porcentaje: <asp:TextBox ForeColor="Black" runat="server" ID="txtPorcentaje"></asp:TextBox>
               <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el porcentaje" ControlToValidate="txtPorcentaje" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
               Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
               <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa una descripción" ControlToValidate="txtDescripcion" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            
        </tr>
        <tr>
            <td colspan="2"></td>
            <td colspan="2">
               Fecha inicio: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaInicio"></asp:TextBox>
               <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa la fecha de inicio" ControlToValidate="txtFechaInicio" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
               Fecha fin: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaTermino"></asp:TextBox>
               <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa fecha de término" ControlToValidate="txtFechaTermino" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td colspan="2">
                Estatus: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlEstatus"></asp:DropDownList>
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Selecciona el estado de la promoción" ControlToValidate="ddlEstatus" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center">
            <td colspan="8">
                Nombre de promoción: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombrePromocion"></asp:TextBox>
                <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>
            </td>
        </tr>
        <tr align="center">
            <td colspan="8">
                <asp:Button ValidationGroup="GuardarGroup" ForeColor="Black" runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
                <asp:Button ForeColor="Black" runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
                <asp:Button ForeColor="Black" runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
                <asp:Button  ForeColor="Black" runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="8">
                <asp:DataGrid ID="dgInventario"  runat="server" PageSize="5" AllowPaging="false" DataKeyField="promocion_id" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgInventario_SelectedIndexChanged" HeaderStyle-HorizontalAlign="Center">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="Clave" DataField="promocion_id" Visible="false"></asp:BoundColumn>
                        <asp:ButtonColumn HeaderText="Seleccionar" ButtonType="LinkButton" Text="Seleccionar" CommandName="Select"></asp:ButtonColumn>
                        <asp:BoundColumn HeaderText="Nombre" DataField="nom_promocion" HeaderStyle-Width="200" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Porcentaje" DataField="porcentaje_promocion" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Fecha término" DataField="fecha_promocion" HeaderStyle-Width="200" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Estado" DataField="estatus_promocion" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Descripción" DataField="des_promocion" HeaderStyle-Width="300"></asp:BoundColumn>  
                        <asp:EditCommandColumn EditText="Editar" HeaderText="Editar" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"> </asp:EditCommandColumn>  
                    </Columns>  
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
                    <SelectedItemStyle BackColor="Yellow"></SelectedItemStyle>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
                    <AlternatingItemStyle BackColor="White" />  
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />  
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" /> 
            </asp:DataGrid> <br /> <br />  
            </td>
        </tr>
    </table>
    
</asp:Content>
