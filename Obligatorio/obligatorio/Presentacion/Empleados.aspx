﻿
    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="obligatorio.Presentacion.Empleados" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          
     <h1>Gestión de Empleados</h1>
  <form role="form">
      <label for="InputTelefono">Teléfono</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="InputTelefono"></asp:TextBox>
  </div>
    <asp:RadioButton runat="server" ID="rdbAdministrador" GroupName="checkbox" Text="Administrador" /> <br />
&nbsp;<br />
      <br />
&nbsp;<asp:Button ID="btnAlta" runat="server" CssClass="btn-success" Text="Alta" />
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnBaja" runat="server" Text="Baja" />
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnModificar" runat="server" Text="Modificar" />
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
      </label>

</asp:Content>
