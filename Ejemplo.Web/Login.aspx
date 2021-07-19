﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" 
    Inherits="Ejemplo.Web.Login" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 48px;
        }
    </style>
</head>
<body style="height: 475px">
    <form runat="server">
     <div class="page">
          <div class="auto-style1">
            <div class="title">
                <h1>
                    Login
                </h1>
            </div>
    </div>

    <div>
        <p>
            <asp:Label ID="Label1" runat="server" Text="Usuario"></asp:Label>
            <asp:TextBox ID="txtUsuarioLogin" runat="server" style="margin-left: 12px"  Width="129px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsuarioLogin" runat="server" ErrorMessage="El usuario es obligatorio"
                    ControlToValidate="txtUsuarioLogin"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtContraseñaLogin" runat="server" style="margin-left: 12px" Width="129px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvContraseñaLogin" runat="server" ErrorMessage= "La contraseña es obligatoria"
                    ControlToValidate="txtContraseñaLogin"></asp:RequiredFieldValidator>
        </p>
        <tr>
            <td colspan="3" align="left" class="auto-style1">
            <p>
                <asp:Label ID="lblErrorLogin" runat="server" Text="." ForeColor="Red"></asp:Label>
            </p>
            </td>
        </tr>
        <asp:Button ID="btnAceptarLogin" runat="server" style="margin-left: 63px; " Text="Aceptar" OnClick="btnAceptarLogin_Click" Width="69px" CssClass="auto-style2" />
        </div>
        </div>
        
    </form>
</body>
</html>
