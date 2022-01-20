using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class Integrante
    {
        public Integrante()
        {
            CuerpoAcademicos = new HashSet<CuerpoAcademico>();
            Direccions = new HashSet<Direccion>();
            TrabajoRecepcionals = new HashSet<TrabajoRecepcional>();
        }

        public string? NumeroDePersonal { get; set; }
        public string? Tipo { get; set; }
        public int IntegranteId { get; set; }
        public string? Nombre { get; set; }

        public virtual ICollection<CuerpoAcademico> CuerpoAcademicos { get; set; }
        public virtual ICollection<Direccion> Direccions { get; set; }
        public virtual ICollection<TrabajoRecepcional> TrabajoRecepcionals { get; set; }
    }
}
