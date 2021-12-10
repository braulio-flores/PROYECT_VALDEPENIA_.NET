<%@ Page Title="Inventario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="FinalProject.Inventario" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    Tal vez funcione mejor con tablas alv
    <div class="row">
        <div class="col">
            <div class="row">
                <div class="col">
                    <h1>Inventario</h1>
                    <asp:HiddenField ID="hiddenId" runat="server"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Nombre: <asp:TextBox ForeColor="Black" runat="server" ID="txtNombre"></asp:TextBox> 
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el nombre del producto" ControlToValidate="txtNombre" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Precio: <asp:TextBox ForeColor="Black" runat="server" ID="txtPrecio"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa el precio del producto" ControlToValidate="txtPrecio" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Marca: <asp:TextBox ForeColor="Black" runat="server" ID="txtMarca"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa la marca del producto" ControlToValidate="txtMarca" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Existencia: <asp:TextBox ForeColor="Black" runat="server" ID="txtExistencia" type="Number"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa las existencias del producto" ControlToValidate="txtExistencia" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Estatus: <asp:DropDownList ForeColor="Black" runat="server" ID="ddlEstatus"></asp:DropDownList>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Selecciona el estado del producto" ControlToValidate="ddlEstatus" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <%--<div class="row">
                <div class="col">
                    Fecha: <asp:TextBox ForeColor="Black" runat="server" ID="txtFecha"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Selecciona la fecha de ingreso del producto" ControlToValidate="txtFecha" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>--%>
            <div class="row">
                <div class="col">
                    Descripción: <asp:TextBox ForeColor="Black" runat="server" ID="txtDescripcion"></asp:TextBox>
                    <asp:RequiredFieldValidator ValidationGroup="GuardarGroup" runat="server" ErrorMessage="Ingresa una descripción del producto" ControlToValidate="txtDescripcion" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Button ValidationGroup="GuardarGroup" ForeColor="Black" runat="server" Text="Guardar" ID="BtnGuardar" OnClick="BtnGuardar_Click"/>
                    <asp:Button ForeColor="Black" runat="server" Text="Modificar" ID="BtnModificar" OnClick="BtnModificar_Click"/>
                    <asp:Button ForeColor="Black" runat="server" Text="Eliminar" ID="BtnEliminar" OnClick="BtnEliminar_Click"/>
                    <asp:Button ForeColor="Black" runat="server" Text="Limpiar" ID="BtnLimpiar" OnClick="BtnLimpiar_Click"/>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    Clave del producto: <asp:TextBox ForeColor="Black" runat="server" ID="txtIdProducto2"></asp:TextBox>
                    <asp:Button ForeColor="Black" runat="server" Text="Rellenar por ID" ID="BtnRellenar" OnClick="BtnRellenar_Click"/>
                </div>
            </div>
            <br />
            NOTA: Al dejar vacío el "Nombre del producto" se buscarán todos los registros
            <asp:Label runat="server">Nombre del producto: </asp:Label><asp:TextBox ForeColor="Black" runat="server" ID="txtNombreProducto"></asp:TextBox>
            <asp:Button ForeColor="Black" runat="server" Text="Buscar" ID="BtnBuscar" OnClick="BtnBuscar_Click"/>

        </div>
        <div class="col">
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
        </div>
    </div>

</asp:Content>
