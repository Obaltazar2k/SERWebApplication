using System;
using System.Collections.Generic;

namespace SER.Models.DB
{
    public partial class Vinculacion
    {
        public Vinculacion()
        {
            TrabajoRecepcionals = new HashSet<TrabajoRecepcional>();
            Lgacs = new HashSet<Lgac>();
        }

        public byte[]? CopiaConvenio { get; set; }
        public DateTime? FechaDeInicioDeConvenio { get; set; }
        public string? OrganizacionVinculada { get; set; }
        public int VinculacionId { get; set; }

        public virtual ICollection<TrabajoRecepcional> TrabajoRecepcionals { get; set; }

        public virtual ICollection<Lgac> Lgacs { get; set; }
    }
}
