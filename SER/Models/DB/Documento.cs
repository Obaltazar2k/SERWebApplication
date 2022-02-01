using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class Documento
    {
        public Documento()
        {
            ExamenDefensas = new HashSet<ExamenDefensa>();
        }

        public byte[]? Archivo { get; set; }
        public string? NombreDocumento { get; set; }
        public int DocumentoId { get; set; }
        public int? TrabajoRecepcionalId { get; set; }
        public string? Notas { get; set; }
        public int? ExperienciaEducativaId { get; set; }

        public virtual ExperienciaEducativa? ExperienciaEducativa { get; set; }
        public virtual TrabajoRecepcional? TrabajoRecepcional { get; set; }

        public virtual ICollection<ExamenDefensa> ExamenDefensas { get; set; }
    }
}
