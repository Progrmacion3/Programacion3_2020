﻿using System;
using System.Collections.Generic;
using System.Linq;

namespace Common
{
    public class Viaje : Base
    {
        public string Carga { get; set; }

        public DateTime Inicio { get; set; }

        public DateTime Fin { get; set; }

        public Ciudad Origen { get; set; }

        public Ciudad Destino { get; set; }

        public Camión Camión { get; set; }

        public Camionero Camionero { get; set; }

        public List<Estado> Estados { get; set; }

        public Viaje()
        {
            Estados = new List<Estado>();
        }

        public Viaje(int id) : base(id)
        {
            Estados = new List<Estado>();
        }

        public Viaje(int id, string carga, DateTime inicio, DateTime fin, Ciudad origen, Ciudad destino, Camión camión, Camionero camionero) : base(id)
        {
            Carga = carga;
            Inicio = inicio;
            Fin = fin;
            Origen = origen;
            Destino = destino;
            Camión = camión;
            Camionero = camionero;
            Estados = new List<Estado>();
        }

        public Viaje(string carga, DateTime inicio, DateTime fin, Ciudad origen, Ciudad destino, Camión camión, Camionero camionero)
        {
            Carga = carga;
            Inicio = inicio;
            Fin = fin;
            Origen = origen;
            Destino = destino;
            Camión = camión;
            Camionero = camionero;
            Estados = new List<Estado>();
        }

        public Estado EstadoActual()
        {
            return Estados.Last();
        }

        public override string ToString()
        {
            return "Camión de matrícula " + Camión.Matrícula
                + " conducido por " + Camionero.Nombre + " " + Camionero.Apellido
                + ", llevando " + Carga
                + ", de " + Origen + " a " + Destino
                + ", desde " + Inicio.ToString("d") + " hasta " + Fin.ToString("d");
        }
    }
}
