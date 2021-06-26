﻿using Common;
using Dominio;
using System;
using System.Collections.Generic;

namespace Ejemplo.Web
{
    public partial class FormularioIngresoCamiones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
                return;

            var usuario = Session["usuario"];
            if (usuario is Administrador)
            {
                lstCamiones.DataValueField = "Id";
                lstCamiones.DataTextField = "VerToString";
                ListarCamiones();
            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void lstCamiones_SelectedIndexChanged(object sender, EventArgs e)

        {
            if (lstCamiones.SelectedItem == null)
                return;

            var id = int.Parse(lstCamiones.SelectedValue);
            Camión camion = new Camión(id);
            Fachada.Obtener(camion);
            txtId.Text = camion.Id.ToString();
            txtMarca.Text = camion.Marca;
            txtModelo.Text = camion.Modelo;
            txtMatricula.Text = camion.Matrícula;
            txtAnio.Text = camion.Año.ToString();
        }

        protected void btnAlta_Click(object sender, EventArgs e)
        {
            int anio;
            if (!int.TryParse(txtAnio.Text, out anio))
            {
                lblMensajes.Text = "Ingrese correctamente el año.";
                return;
            }
            Camión camion = new Camión(
                txtMarca.Text,
                txtModelo.Text,
                txtMatricula.Text,
                anio
                );

            if (Fachada.Alta(camion))
            {
                lblMensajes.Text = "Camión ingresado correctamente";
                txtId.Text = camion.Id.ToString();
                ListarCamiones();
            }
            else
            {
                lblMensajes.Text = "Error de base de datos.";
            }
        }

        protected void btnBaja_Click(object sender, EventArgs e)
        {
            int id;
            if (!int.TryParse(txtId.Text, out id))
            {
                lblMensajes.Text = "Error: No se pudo dar de baja";
                return;
            }

            Camión camion = new Camión(id);

            if (Fachada.Baja(camion))
            {
                lblMensajes.Text = "Camión dado de baja correctamente";
                ListarCamiones();
                Limpiar();
            }
            else
            {
                lblMensajes.Text = "No se pudo dar de baja al camión";
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            int id;
            if (!int.TryParse(txtId.Text, out id))
            {
                lblMensajes.Text = "Error: No se pudo modificar al camión";
                return;
            }
            int anio;
            if (!int.TryParse(txtAnio.Text, out anio))
            {
                lblMensajes.Text = "Error: No se pudo modificar al camión, ingrese corectamente el año";
                return;
            }

            Camión camion = new Camión(
                    id,
                    txtMarca.Text,
                    txtModelo.Text,
                    txtMatricula.Text,
                    anio
                );

            if (Fachada.Modificar(camion))
            {
                lblMensajes.Text = "Modificación correcta";
                ListarCamiones();
            }
            else
            {
                lblMensajes.Text = "Error de base de datos.";
            }
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void ListarCamiones()
        {
            var lista = new List<Camión>();
            Fachada.Listar(lista);
            lstCamiones.DataSource = null;
            lstCamiones.DataSource = lista;
            lstCamiones.DataBind();
        }

        private void Limpiar()
        {
            txtId.Text = "";
            txtMarca.Text = "";
            txtModelo.Text = "";
            txtMatricula.Text = "";
            txtAnio.Text = "";
            lstCamiones.ClearSelection();
        }
    }
}