using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class SinodalDelTrabajo
    {
        public SinodalDelTrabajo()
        {
            Direccions = new HashSet<Direccion>();
            TrabajoRecepcionals = new HashSet<TrabajoRecepcional>();
        }

        public string? CorreoElectronico { get; set; }
        public string? Organizacion { get; set; }
        public string? Telefono { get; set; }
        public int SinodalDelTrabajoId { get; set; }
        public string? Nombre { get; set; }

        public virtual ICollection<Direccion> Direccions { get; set; }
        public virtual ICollection<TrabajoRecepcional> TrabajoRecepcionals { get; set; }
    }
}
