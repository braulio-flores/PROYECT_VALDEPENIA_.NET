<%@ Page Title="Gastos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos.aspx.cs" Inherits="FinalProject.Gastos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table style="border-collapse:separate; border-spacing:0 15px;padding: 0px 40px;">
        <tr>
            <td colspan="8">
                <h1>Gastos generales</h1>
                <asp:HiddenField ID="hiddenId" runat="server"/>
            </td>
        </tr>
        <tr class="adminForm">
            <td>
                Tipo de gasto: <asp:TextBox ForeColor="Black" runat="server" ID="txtTipoGasto"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el tipo de gasto" ControlToValidate="txtTipoGasto" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td>
                Total: <asp:TextBox ForeColor="Black" runat="server" ID="txtTotal"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el total" ControlToValidate="txtTotal" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="2">
                Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa una descripción" ControlToValidate="txtDescripcion" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
            <td></td>
            <td colspan="2">
                Fecha: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaGasto"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa la fecha del gasto" ControlToValidate="txtFechaGasto" ForeColor="red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr align="center" class="adminForm">
            <td colspan="8">
                <asp:Button ValidationGroup="GuardarGroup" ForeColor="Black" runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
                <asp:Button ForeColor="Black" runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
                <asp:Button ForeColor="Black" runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
                <asp:Button  ForeColor="Black" runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
            </td>
        </tr>
        <tr align="center">
            <td colspan="8">
                <asp:TextBox ForeColor="Black" runat="server" ID="txtBuscar"></asp:TextBox>
                <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="btnBuscar" Onclick="BtnBuscar_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="8">
                <asp:DataGrid ID="dgGastos"  runat="server" PageSize="5" AllowPaging="false" DataKeyField="gastos_id" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgInventario_SelectedIndexChanged" HeaderStyle-HorizontalAlign="Center">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="Clave" DataField="gastos_id" Visible="false"></asp:BoundColumn>
                        <asp:ButtonColumn HeaderText="Seleccionar" ButtonType="LinkButton" Text="Seleccionar" CommandName="Select"></asp:ButtonColumn>
                        <asp:BoundColumn HeaderText="Nombre de gasto" DataField="nom_gasto" HeaderStyle-Width="200"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Descripción" DataField="des_gasto" HeaderStyle-Width="300" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Total" DataField="total_gasto" HeaderStyle-Width="150"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Fecha" DataField="fecha_gasto" HeaderStyle-Width="300" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
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
