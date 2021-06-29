﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Parada.aspx.cs" Inherits="Ejemplo.Web.Parada" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form runat="server">
    <div class="page">
        <div class="header">
            <div class="title">
                <h1>
                    Seccion Administrativa
                </h1>
            </div>
           
            <div class="clear hideSkiplink">
            <asp:Menu ID="NavigationMenu" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                <Items>

              <asp:MenuItem NavigateUrl="~/SeccionAdministrativa.aspx" Text="Pagina Principal"/>
              <asp:MenuItem NavigateUrl="~/Camion.aspx" Text="Camion" />
              <asp:MenuItem NavigateUrl="~/Camionero.aspx" Text="Camionero" />
              <asp:MenuItem NavigateUrl="~/Empleado.aspx" Text="Empleado" />
              <asp:MenuItem NavigateUrl="~/Parada.aspx" Text="Parada" />
              <asp:MenuItem NavigateUrl="~/Viaje.aspx" Text="Viaje" />
                </Items>
            </asp:Menu>
            </div>
      </div>
    <div class="main">
         <h2>
            Administración de las paradas
        </h2>
        <table>
             <tr>
            <td align="left"> Estado de la parada:
            </td>
            <td>
                <asp:TextBox ID="txtEstadoParada" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="rfvEstadoParada" runat="server" ErrorMessage="El estado de la parada es obligatorio"
                    ControlToValidate="txtEstadoParada"></asp:RequiredFieldValidator>
            </td>
        </tr>
             <tr>
            <td align="left"> Tipo de la parada:
            </td>
            <td>
                <asp:TextBox ID="txtTipoParada" MaxLength="50" runat="server"></asp:TextBox>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="rfvTipoParada" runat="server" ErrorMessage="El tipo de parada es obligatorio"
                    ControlToValidate="txtTipoParada"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td align="left"> Comentario de la parada:
            </td>
            <td>
                <asp:TextBox ID="txtComentarioAdmin" MaxLength="50" runat="server" Height="83px" Width="184px"></asp:TextBox>
            </td>
            <td>
                 <asp:RequiredFieldValidator ID="rfvComentarioAdmin" runat="server" ErrorMessage="El comentario del administrador sobre la parada es obligatorio"
                    ControlToValidate="txtComentarioAdmin"></asp:RequiredFieldValidator>
            </td>
        </tr>
              <tr>
            <td colspan="3" align="left" class="auto-style1">
                <asp:Label ID="lblResultadoParada" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
             <tr>
                  <td>
                         <asp:Button ID="btnAgregarParada" runat="server" Text="Agregar" OnClick="btnAgregarParada_Click" />
                         <asp:Button ID="btnModificarParada" runat="server" Text="Modificar" OnClick="btnModificarParada_Click" Visible="false"/>
                         <asp:GridView ID="grillaParadas" Width="100%" runat="server" AutoGenerateColumns="true"
                                    ViewStateMode="Enabled" CellPadding="4" ForeColor="#333333" GridLines="None"
                                    AutoGenerateDeleteButton="true" OnRowDeleting="grillaParadas_RowDeleting" AutoGenerateSelectButton="true" 
                                    OnSelectedIndexChanging="grillaParadas_SelectedIndexChanging"
                                    EmptyDataText="No hay datos ingresados"
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
    </div>
    </div>
    </form>
</body>
</html>
