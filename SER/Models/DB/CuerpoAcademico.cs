using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class CuerpoAcademico
    {
        public CuerpoAcademico()
        {
            Integrantes = new HashSet<Integrante>();
        }

        public string? Nombre { get; set; }
        public string? Objetivogeneral { get; set; }
        public int CuerpoAcademicoId { get; set; }
        public int AcademiaId { get; set; }

        public virtual Academium Academia { get; set; } = null!;

        public virtual ICollection<Integrante> Integrantes { get; set; }
    }
}
