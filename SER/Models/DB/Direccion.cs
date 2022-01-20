using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class Direccion
    {
        public Direccion()
        {
            Integrantes = new HashSet<Integrante>();
            SinodalDelTrabajos = new HashSet<SinodalDelTrabajo>();
        }

        public DateTime? FechaInicio { get; set; }
        public string? Tipo { get; set; }
        public int DireccionId { get; set; }
        public int ExperienciaEducativaId { get; set; }

        public virtual ExperienciaEducativa ExperienciaEducativa { get; set; } = null!;

        public virtual ICollection<Integrante> Integrantes { get; set; }
        public virtual ICollection<SinodalDelTrabajo> SinodalDelTrabajos { get; set; }
    }
}
