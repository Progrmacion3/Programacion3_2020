﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Dominio.Clases
{
    public class dEmpleado
    {
        public static bool Agregar_Empleado(Common.Clases.Empleado pEmp)
        {
            return Persistencia.Clases.pEmpleado.AgregarEmpleado(pEmp);
        }

        public static bool Eliminar_Empleado(Common.Clases.Empleado pEmp)
        {
            return Persistencia.Clases.pEmpleado.EliminarEmpleado(pEmp);
        }

        public static bool Modificar_Empleado(Common.Clases.Empleado pEmp)
        {
            return Persistencia.Clases.pEmpleado.ModificarEmpleado(pEmp);
        }

        public static List<Common.Clases.Empleado> Traer_Empleados()
        {
            return Persistencia.Clases.pEmpleado.TraerTodosLosEmpleados();
        }

        public static Common.Clases.Empleado Traer_UnEmpleado(Common.Clases.Empleado pEmp)
        {
            return Persistencia.Clases.pEmpleado.TraerUnEmpleadoEnEspecifico(pEmp);
        }

        public static Common.Clases.Empleado Revisar_Usuario_Contraseña(Common.Clases.Empleado pEmp)
        {
            return Persistencia.Clases.pEmpleado.RevisarDatosDelLogin(pEmp);
        }
    }
}