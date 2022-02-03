using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace SER.Models.DB
{
    public partial class SinodalDelTrabajo
    {
        public SinodalDelTrabajo()
        {
            Direccions = new HashSet<Direccion>();
            TrabajoRecepcionals = new HashSet<TrabajoRecepcional>();
        }

        [Required]
        [StringLength(255, MinimumLength = 3, ErrorMessage = "La longitud del correo debe ser mayor a 10 caracteres y menor que 255")]
        [EmailAddress]
        public string? CorreoElectronico { get; set; }
        [Required]
        [StringLength(255, MinimumLength = 2, ErrorMessage = "La longitud del nombre debe ser minimo de 2 caracteres")]
        public string? Organizacion { get; set; }
        [Required]
        [StringLength(10, MinimumLength = 10, ErrorMessage = "La longitud del telefono debe ser de 10 digitos")]
        [Phone (ErrorMessage = "Solo debe ingrsar numeros en este campo")]
        public string? Telefono { get; set; }
        public int SinodalDelTrabajoId { get; set; }
        [Required]
        [StringLength(255, MinimumLength = 3, ErrorMessage = "La longitud del nombre debe ser mayor a 10 caracteres y menor que 255")]
        [RegularExpression (@"^[a-zA-Z\s\u00C0-\u00FF]*$", ErrorMessage = "Este campo no admite números")]
        public string? Nombre { get; set; }

        public virtual ICollection<Direccion> Direccions { get; set; }
        public virtual ICollection<TrabajoRecepcional> TrabajoRecepcionals { get; set; }
    }
}
