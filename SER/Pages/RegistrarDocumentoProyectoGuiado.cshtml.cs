using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SER.Models.DB;
using SER.Models.DTO;
using SER.Models;
using Microsoft.EntityFrameworkCore;

namespace SER.Pages
{
    public class RegistrarDocumentoProyectoGuiadoModel : PageModel
    {
        private readonly SERContext _context;
        public List<ExperienciaEducativa> EEProyectoGuiado { get; set; }
        public List<Alumno> Alumnos { get; set; }
        public List<AlumnoProyectoGuiado> AlumnosProyectoGuiado { get; set; }
        private IWebHostEnvironment Environment;

        [BindProperty]
        public int IDAlumnoSeleccionado { get; set; }
        [BindProperty]
        public IFormFile ArchivoDeProyectoGuiado { get; set; }
        public RegistrarDocumentoProyectoGuiadoModel(SERContext context, IWebHostEnvironment _environment)
        {
            _context = context;
            Environment = _environment;
            AlumnosProyectoGuiado = new List<AlumnoProyectoGuiado>();
            Alumnos = new List<Alumno>();
        }
        public IActionResult OnGet()
        {
            try
            {
                var alumnosProyectoGuiado = _context.AlumnoTrabajoRecepcionalProyectoGuiadoViews.ToList();

                if (alumnosProyectoGuiado.Any())
                {
                    foreach (var alumno in alumnosProyectoGuiado)
                    {
                        AlumnoProyectoGuiado alumnoPG = new AlumnoProyectoGuiado()
                        {
                            Nombre = alumno.Nombre,
                            CorreoElectronico = alumno.CorreoElectronico,
                            Matricula = alumno.Matricula,
                            Modalidad = alumno.Modalidad,
                            Estado = alumno.Estado,
                            Fechadeinicio = alumno.ShortDateTime(alumno.Fechadeinicio)
                        };
                        AlumnosProyectoGuiado.Add(alumnoPG);
                    }
                }
                else
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, "No hay aulumnos registrados en la EE Proyectio Guiado");
                }
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return StatusCode(StatusCodes.Status500InternalServerError, "No se pudieron obtener los alumnos de la experiencia educativa de Proyecto Guiado.");
            }

            return Page();
        }
    }
}
