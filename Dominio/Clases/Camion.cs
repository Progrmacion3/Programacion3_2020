﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dominio.Clases
{
    public class Camion
    {
        public static bool AgregarCamion(Common.Clases.Camion pCamion)
        {
            return Persistencia.Clases.Camion.AgregarCamion(pCamion);
        }
        public static bool EliminarCamion(Common.Clases.Camion pCamion)
        {
            return Persistencia.Clases.Camion.EliminarCamion(pCamion);
        }
        public static bool ModificarCamion(Common.Clases.Camion pCamion)
        {
            return Persistencia.Clases.Camion.ModificarCamion(pCamion);
        }
    }
}
