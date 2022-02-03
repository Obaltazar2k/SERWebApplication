using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SER.Models.DB;

namespace SER.Pages
{
    public class RegistrarSinodalModel : PageModel
    {
        private readonly SERContext _context;

        [BindProperty]
        public SinodalDelTrabajo SinodalDelTrabajo { get; set; }

        public RegistrarSinodalModel(SERContext context)
        {
            _context = context;
        }
        public void OnGet()
        {
        }

        public IActionResult OnPostSinodalDelTrabajo()
        {
            if (ModelState.IsValid)
            {
                var sinodalesExistentes = _context.SinodalDelTrabajos.ToList();
                bool sinodalYaExiste = sinodalesExistentes.Any(s => s.CorreoElectronico.Equals(SinodalDelTrabajo.CorreoElectronico));
                if (sinodalYaExiste)
                {
                    return Page();
                }
                else
                {
                    _context.SinodalDelTrabajos.Add(SinodalDelTrabajo);
                    _context.SaveChanges();
                    new OkObjectResult(SinodalDelTrabajo.Nombre);
                    return RedirectToPage("/Menus/UIMaestro");
                }                              
            }
            return Page();
        }
    }
}