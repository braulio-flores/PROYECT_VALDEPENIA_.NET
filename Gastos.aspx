<%@ Page Title="Gastos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Gastos.aspx.cs" Inherits="FinalProject.Gastos" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <table style="border-collapse:separate; border-spacing:0 15px;">
        <tr>
            <td colspan="8">
                <h1>Gastos</h1>
            </td>
        </tr>
        <tr>
            <td>
                Tipo de gasto: <asp:TextBox ForeColor="Black" runat="server" ID="txtTipoGasto"></asp:TextBox>
            </td>
            <td>
                Total: <asp:TextBox ForeColor="Black" runat="server" ID="txtTotal"></asp:TextBox>
            </td>
            <td></td>
            <td>
                Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
            </td>
            <td></td>
            <td>
                Fecha: <asp:TextBox type="date" ForeColor="Black" runat="server" ID="txtFechaGasto"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td colspan="8">
                <asp:Button ForeColor="Black" runat="server" Text="Guardar"/>
                <asp:Button ForeColor="Black" runat="server" Text="Modificar"/>
                <asp:Button ForeColor="Black" runat="server" Text="Eliminar"/>
                <asp:Button ForeColor="Black" runat="server" Text="Limpiar"/>
        </tr>
        <tr align="center">
            <td colspan="8">
                <asp:TextBox ForeColor="Black" runat="server" ID="txtBuscar"></asp:TextBox>
                <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="btnBuscar" Onclick="btnBuscar_Click"/>
            </td>
        </tr>
        <tr>
            <td colspan="8">
                <asp:DataGrid ID="dgInventario"  runat="server" PageSize="5" AllowPaging="false" DataKeyField="producto_id" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dgInventario_SelectedIndexChanged" HeaderStyle-HorizontalAlign="Center">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="Clave" DataField="producto_id" Visible="false"></asp:BoundColumn>
                        <asp:ButtonColumn HeaderText="Seleccionar" ButtonType="LinkButton" Text="Seleccionar" CommandName="Select"></asp:ButtonColumn>
                        <asp:BoundColumn HeaderText="Nombre" DataField="nom_producto" HeaderStyle-Width="100"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Precio" DataField="precio_producto" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Marca" DataField="marca_producto" HeaderStyle-Width="100"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Existencia" DataField="existencia_producto" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <%--<asp:BoundColumn HeaderText="Fecha" DataField="fechaprov_producto" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>--%>
                        <asp:BoundColumn HeaderText="Estado" DataField="estatus_producto" HeaderStyle-Width="100" ItemStyle-HorizontalAlign="Center"></asp:BoundColumn>
                        <asp:BoundColumn HeaderText="Descripción" DataField="des_producto" HeaderStyle-Width="100"></asp:BoundColumn>  
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
