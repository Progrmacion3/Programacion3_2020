﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dominio.Clases
{
    public class Empleado
    {
        public static bool AgregarEmpleado(Common.Clases.Empleado pEmpleado)
        {
            return Persistencia.Clases.Empleado.AgregarEmpleado(pEmpleado);
        }
        public static bool EliminarEmpleado(Common.Clases.Empleado pEmpleado)
        {
            return Persistencia.Clases.Empleado.EliminarEmpleado(pEmpleado);
        }
        public static bool ModificarEmpleado(Common.Clases.Empleado pEmpleado)
        {
            return Persistencia.Clases.Empleado.ModificarEmpleado(pEmpleado);
        }
    }
}