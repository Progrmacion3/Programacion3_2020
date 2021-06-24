﻿<%@ Page
  Title=""
  Language="C#"
  MasterPageFile="~/Administradores.master"
  AutoEventWireup="true"
  CodeBehind="wfrmIngresoViajes.aspx.cs"
  Inherits="Ejemplo.Web.wfrmIngresoViajes"
%>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  <style type="text/css">
    label {
      display: inline-block;
      width: 100px;
    }
    input[type: submit] {
      padding: 10px;
    }
    .style1 {
      height: 29px;
      width: 925px;
    }
    .etiqueta {
      font-family: 'Arial Black'
    }
      .auto-style8 {
          height: 26px;
      }
  </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">
  <table class="style1">
    <colgroup>
       <col style="width: 30%;">
       <col style="width: 70%;">
    </colgroup>
    <caption style="font-family: Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; color: #000066">
      <br />
      INGRESO DE VIAJES<br />
    </caption>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblIdViaje" Text="Id Viaje" />
      </td>
      <td>
        <asp:TextBox ID="txtIdViaje" runat="server" TabIndex="1" Enabled="False" Height="22px"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td class="auto-style8">
        <asp:Label runat="server" CssClass="etiqueta" ID="lblCarga" Text="Tipo de Carga" />
      </td>
      <td class="auto-style8">
        <asp:TextBox ID="txtCarga" runat="server" TabIndex="1"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblFecIni" Text="Fecha Inicio" />
      </td>
      <td>
        <asp:TextBox ID="txtFecIni" runat="server" TabIndex="1"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblFecFinal" Text="Fecha Final" />
      </td>
      <td>
        <asp:TextBox ID="txtFecFin" runat="server" TabIndex="1"></asp:TextBox>
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblCamion" Text="Camión" />
      </td>
      <td>
        <asp:DropDownList ID="lstCamion" runat="server" />
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblCamionero" Text="Camionero" />
      </td>
      <td>
        <asp:DropDownList ID="lstCamionero" runat="server" />
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblCiuIni" Text="Ciudad Inicio" />
        <br />

      </td>
      <td>
        <asp:DropDownList ID="lstCiudIni" runat="server" />
      </td>
    </tr>
    <tr>
      <td>
        <asp:Label runat="server" CssClass="etiqueta" ID="lblCiufin" Text="Ciudad Final" />
      </td>
      <td>
        <asp:DropDownList ID="lstCiudFin" runat="server" />
      </td>
    </tr>
    <tr>
      <td colspan="2">



 <asp:GridView ID="GridViewUsuarios" runat="server" AutoGenerateColumns="False" Width="829px" CellPadding="4" ForeColor="#333333" GridLines="None">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="id_viaje" HeaderText="ID Viaje"></asp:BoundField>
                  <asp:BoundField DataField="carga" HeaderText="Tipo de Carga"></asp:BoundField>
                  <asp:BoundField DataField="fec_ini" HeaderText="Fecha Inicio"></asp:BoundField>
                  <asp:BoundField DataField="fec_final" HeaderText="Fecha final"></asp:BoundField>
                  <asp:BoundField DataField="camion" HeaderText="Camion"></asp:BoundField>
                  <asp:BoundField DataField="camionero" HeaderText="Camionero"></asp:BoundField>
                  <asp:BoundField DataField="ciu_ini" HeaderText="Ciudad Inicio"></asp:BoundField>
                  <asp:BoundField DataField="ciu_final" HeaderText="Ciudad Final"></asp:BoundField>

              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <sortedascendingcellstyle backcolor="#E9E7E2" />
              <sortedascendingheaderstyle backcolor="#506C8C" />
              <sorteddescendingcellstyle backcolor="#FFFDF8" />
              <sorteddescendingheaderstyle backcolor="#6F8DAE" />
          </asp:GridView>















        <asp:ListBox ID="lstViajes" runat="server" Height="106px"
          Font-Size="Smaller" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="lstViajes_SelectedIndexChanged"></asp:ListBox>
      </td>
    </tr>
  </table>
  <br />


  <asp:Button ID="btnAlta" runat="server" Style="text-align: center"
    Width="115px" Height="45px" BackColor="#003366"
    BorderColor="#CCFFFF" Font-Bold="True" ForeColor="White"
    Text="ALTA" OnClick="btnAlta_Click" TabIndex="8" />

  &nbsp;

    <asp:Button ID="btnBaja" runat="server" Style="text-align: center"
      Width="115px" Height="45px" BackColor="#003366"
      BorderColor="#CCFFFF" Font-Bold="True" ForeColor="White"
      Text="BAJA" OnClick="btnBaja_Click" TabIndex="9" />

  &nbsp;&nbsp;
   
    <asp:Button ID="btnLimpiar" runat="server" Style="text-align: center" Width="115px" Height="45px" BackColor="#003366"
      BorderColor="#CCFFFF" Font-Bold="True" ForeColor="White" Text="LIMPIAR"
      OnClick="btnLimpiar_Click" />

  &nbsp;&nbsp;&nbsp;
  
    <asp:Label ID="lblMensajes" Style="font-family: 'Arial Black'" runat="server"
      Width="514px" Text="." ForeColor="#CC0000"></asp:Label>
  <br />

</asp:Content>