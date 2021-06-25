﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dominio
{
    public class Fachada
    {
        #region Metodos de Categoria

        public static bool Categoria_Agregar(Common.Clases.Categoria pCategoria)
        {
            return Dominio.Clases.Categoria.Agregar(pCategoria);
        }

        public static List<Common.Clases.Categoria> Cateogoria_TraerTodas()
        {
            return Dominio.Clases.Categoria.TraerTodas();
        }

        public static bool Categoria_Eliminar(Common.Clases.Categoria pCategoria)
        {
            return Dominio.Clases.Categoria.Eliminar(pCategoria);
        }

        public static Common.Clases.Categoria Cateogoria_TraerEspecifica(Common.Clases.Categoria pCategoria)
        {
            return Dominio.Clases.Categoria.TraerEspecifica(pCategoria);
        }

        public static bool Categoria_Modificar(Common.Clases.Categoria pCategoria)
        {
            return Dominio.Clases.Categoria.Modificar(pCategoria);
        }

        #endregion

        #region Camiones
        public static bool AltaCamion(Common.Clases.Camion pCamion)
        {
            return Dominio.Clases.dCamion.AltaCamion(pCamion);
        }
        public static bool BajaCamion(Common.Clases.Camion pCamion)
        {
            return Dominio.Clases.dCamion.BajaCamion(pCamion);
        }
        public static bool ModificarCamion(Common.Clases.Camion pCamion)
        {
            return Dominio.Clases.dCamion.ModificarCamion(pCamion);
        }
        public static List<Common.Clases.Camion> ListarCamiones()
        {
            return Dominio.Clases.dCamion.ListarCamiones();
        }
        public static Common.Clases.Camion TraerCamion(Common.Clases.Camion pCamion)
        {
            return Dominio.Clases.dCamion.TraerCamion(pCamion);
        }
        #endregion

        #region Camioneros
        public static bool AltaCamionero(Common.Clases.Camionero pCamionero)
        {
            return Dominio.Clases.dCamionero.AltaCamionero(pCamionero);
        }
        public static bool BajaCamionero(Common.Clases.Camionero pCamionero)
        {
            return Dominio.Clases.dCamionero.BajaCamionero(pCamionero);
        }
        public static bool ModificarCamionero(Common.Clases.Camionero pCamionero)
        {
            return Dominio.Clases.dCamionero.ModificarCamionero(pCamionero);
        }
        public static List<Common.Clases.Camionero> ListarCamioneros()
        {
            return Dominio.Clases.dCamionero.ListarCamioneros();
        }
        public static Common.Clases.Camionero TraerCamionero(Common.Clases.Camionero pCamionero)
        {
            return Dominio.Clases.dCamionero.TraerCamionero(pCamionero);
        }
        #endregion

        #region Administrador
        public static bool AltaAdministrador(Common.Clases.Administrador pAdministrador)
        {
            return Dominio.Clases.dAdministrador.AltaAdministrador(pAdministrador);
        }
        public static bool BajaAdministrador(Common.Clases.Administrador pAdministrador)
        {
            return Dominio.Clases.dAdministrador.BajaAdministrador(pAdministrador);
        }
        public static bool ModificarAdministrador(Common.Clases.Administrador pAdministrador)
        {
            return Dominio.Clases.dAdministrador.ModificarAdministrador(pAdministrador);
        }
        public static List<Common.Clases.Administrador> ListarAdministradores()
        {
            return Dominio.Clases.dAdministrador.ListarAdministradores();
        }
        public static Common.Clases.Administrador TraerAdministrador(Common.Clases.Administrador pAdministrador)
        {
            return Dominio.Clases.dAdministrador.TraerAdministrador(pAdministrador);
        }
        #endregion
    }
}
