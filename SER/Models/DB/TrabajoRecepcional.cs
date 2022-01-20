using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class TrabajoRecepcional
    {
        public TrabajoRecepcional()
        {
            Documentos = new HashSet<Documento>();
            ExamenDefensas = new HashSet<ExamenDefensa>();
            Alumnos = new HashSet<Alumno>();
            Integrantes = new HashSet<Integrante>();
            SinodalDelTrabajos = new HashSet<SinodalDelTrabajo>();
        }

        public int TrabajoRecepcionalId { get; set; }
        public byte[]? Anteproyecto { get; set; }
        public string? Estado { get; set; }
        public DateTime? Fechadeinicio { get; set; }
        public string? LineaDeInvestigacion { get; set; }
        public string? Modalidad { get; set; }
        public string? Nombre { get; set; }
        public int? AcademiaId { get; set; }
        public int? PladeafeiId { get; set; }
        public int? ProyectoDeInvestigacionId { get; set; }
        public int? VinculacionId { get; set; }

        public virtual Academium? Academia { get; set; }
        public virtual Pladeafei? Pladeafei { get; set; }
        public virtual ProyectoDeInvestigacion? ProyectoDeInvestigacion { get; set; }
        public virtual Vinculacion? Vinculacion { get; set; }
        public virtual ICollection<Documento> Documentos { get; set; }
        public virtual ICollection<ExamenDefensa> ExamenDefensas { get; set; }

        public virtual ICollection<Alumno> Alumnos { get; set; }
        public virtual ICollection<Integrante> Integrantes { get; set; }
        public virtual ICollection<SinodalDelTrabajo> SinodalDelTrabajos { get; set; }
    }
}
