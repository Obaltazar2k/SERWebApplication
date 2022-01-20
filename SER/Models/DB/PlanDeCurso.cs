using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class PlanDeCurso
    {
        public byte[]? Archivo { get; set; }
        public string? ObjetivoGeneral { get; set; }
        public int PlanDeCursoId { get; set; }
        public int ExperienciaEducativaId { get; set; }

        public virtual ExperienciaEducativa ExperienciaEducativa { get; set; } = null!;
    }
}
