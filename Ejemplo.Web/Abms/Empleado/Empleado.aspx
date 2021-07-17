﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="abmClientes.aspx.cs" MasterPageFile="~/Site.master"
    Inherits="Ejemplo.Web.Cliente.abmClientes" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>Administración de Camionero 
    </h2>
    <table>
        <tr>
            <td align="left">Nombre:
            </td>
            <td>
                <asp:TextBox ID="txtNombre" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="El nombre es obligatorio"
                    ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">Apellido:
            </td>
            <td>
                <asp:TextBox ID="txtApellido" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="El apellido es obligatorio"
                    ControlToValidate="txtApellido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">Cedula:
            </td>
            <td>
                <asp:TextBox ID="txtCedula" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="La Cedula es obligatorio"
                    ControlToValidate="txtCedula"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Cargo:
            </td>
            <td>
                <asp:TextBox ID="txtCargo" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="El Cargo es obligatorio"
                    ControlToValidate="txtCargo"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Telefono:
            </td>
            <td>
                <asp:TextBox ID="txtTelefono" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="El Telefono es obligatorio"
                    ControlToValidate="txtTelefono"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">Tipo:
            </td>
            <td>
                <asp:TextBox ID="txtTipo" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="El Tipo es obligatorio"
                    ControlToValidate="txtTipo"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Usuario:
            </td>
            <td>
                <asp:TextBox ID="txtUsuario" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="El Usuario es obligatorio"
                    ControlToValidate="txtUsuario"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Contraseña:
            </td>
            <td>
                <asp:TextBox ID="txtContrasenia" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="La Contraseña es obligatorio"
                    ControlToValidate="txtContrasenia"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Edad:
            </td>
            <td>
                <asp:TextBox ID="txtEdad" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="La Edad es obligatorio"
                    ControlToValidate="txtEdad"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Tipo De Libreta:
            </td>
            <td>
                <asp:TextBox ID="txtLibreta" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="La Libreta es obligatorio"
                    ControlToValidate="txtLibreta"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left">Fecha venc Libreta:
            </td>
            <td>
                <asp:TextBox ID="txtFecVenLib" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="La Libreta es obligatorio"
                    ControlToValidate="txtFecVenLib"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">Estado:
            </td>
            <td>
                <asp:TextBox ID="txtEstado" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="El estado esobligatorio"
                    ControlToValidate="txtEstado"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left">Categoria:
            </td>
            <td colspan="3" align="left">
                <asp:Label ID="lblCategoria" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Label ID="lblResultado" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
         <tr>
            <td colspan="3" align="left">
                <asp:Label ID="lblId" runat="server" Visible="false" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="left">
                <asp:Button ID="btnAgregar" Text="Agregar" runat="server" OnClick="btnAgregar_Click" />
                <asp:Button ID="btnModificar" Text="Modificar" runat="server" Visible ="false" OnClick="btnModificar_Click" />
                <asp:Button ID="btnEliminar" Text="Eliminar" runat="server" Visible ="false" OnClick="btnEliminar_Click" />
                 <asp:Button ID="btnCancelar" Text="Cancelar" runat="server" Visible ="false" OnClick="btnCancelar_Click" />
            </td>
        </tr>

        <tr>

            <td>
                <asp:GridView ID="grdCategorias" Width="100%" runat="server" AutoGenerateColumns="true"
                    ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None"
                    AutoGenerateSelectButton="true"
                    OnSelectedIndexChanging="grdCategorias_SelectedIndexChanging" EmptyDataText="No hay datos ingresados"
                    ShowHeaderWhenEmpty="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>



            <td>
                <asp:GridView ID="grillaEmpleado" Width="100%" runat="server" AutoGenerateColumns="true"
                    ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None"
                    AutoGenerateSelectButton="true"
                    OnSelectedIndexChanging="grillaEmpleado_SelectedIndexChanging" EmptyDataText="No hay datos ingresados"
                    ShowHeaderWhenEmpty="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>