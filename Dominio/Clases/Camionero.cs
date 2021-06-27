﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dominio.Clases
{
    public class Camionero
    {
        public static bool AgregarCamionero(Common.Clases.Camionero pCamionero)
        {
            return Persistencia.Clases.Camionero.AgregarCamionero(pCamionero);
        }
        public static bool EliminarCamionero(Common.Clases.Camionero pCamionero)
        {
            return Persistencia.Clases.Camionero.EliminarCamionero(pCamionero);
        }
        public static bool ModificarCamionero(Common.Clases.Camionero pCamionero)
        {
            return Persistencia.Clases.Camionero.ModificarCamionero(pCamionero);
        }
    }
}