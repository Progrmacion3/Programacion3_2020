﻿
    <%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="obligatorio.Presentacion.Empleados" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          
     <h1>Gestión de Empleados</h1>
  <form role="form">
  <div class="form-group">
    <label for="InputName">Nombre</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputName"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="InputSecondName">Apellido</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputSecondName"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="InputDocument">Cédula</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputDocument"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="InputPosition">Cargo</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputPosition"></asp:TextBox>
  </div>
  <div class="form-control">
      <label for="InputTelefono">Teléfono</label>
      <asp:TextBox runat="server" CssClass="form-control" ID="InputTelefono"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="InputUser">Usuario</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputUser"></asp:TextBox>
  </div>
  <div class="form-group">
    <label for="InputPass">Contraseña</label>
    <asp:TextBox runat="server" type="password" CssClass="form-control" ID="InputPass"></asp:TextBox> 
  </div>
  <div class="checkbox">   
      <div class="form-group">
    <label for="InputPosition">Edad</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputEdad" Visible="False"></asp:TextBox>
  </div>

        <div class="form-group">
    <label for="InputPosition">Tipo de Libreta</label>
    <asp:TextBox runat="server" CssClass="form-control" ID="InputTipoLibreta" Visible="False"></asp:TextBox>
  </div>
        <div class="form-group">
    <label for="InputPosition">Fecha de Vencimiento</label>
    <asp:Calendar runat="server" ID="InputFechaVencimiento"></asp:Calendar>
  </div>

      <asp:RadioButton runat="server" ID="rdbCamionero" GroupName="checkbox" Text="Camionero" /> 
    <asp:RadioButton runat="server" ID="rdbAdministrador" GroupName="checkbox" Text="Administrador" /> <br />
&nbsp;<br />
      <br />

  </div>
<div>
&nbsp;<asp:Button ID="btnAlta" runat="server" CssClass="btn-success" Text="Alta"  OnClick="btnAlta_Click"/>
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnBaja" runat="server" Text="Baja" onClick="btnBaja_Click"/>
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnModificar" runat="server" Text="Modificar" onClick="btnModificar_Click"/>
&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" onClick="btnModificar_Click"/>
  </div>
    
</form>

</asp:Content>

