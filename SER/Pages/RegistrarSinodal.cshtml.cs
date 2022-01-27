using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using SER.Models.DB;

namespace SER.Pages
{
    public class RegistrarSinodalModel : PageModel
    {
        //private SERContext DbContext { get; set; }

        [BindProperty]
        public SinodalDelTrabajo SinodalDelTrabajo { get; set; }

        public void OnGet()
        {
        }

        public IActionResult OnPostSinodalDelTrabajo()
        {
            if (ModelState.IsValid)
            {
                using (var DbContext = new SERContext())
                {
                    //DbContext.SinodalDelTrabajos.Add(SinodalDelTrabajo);
                    //DbContext.SaveChanges();
                    new OkObjectResult(SinodalDelTrabajo.Nombre);
                }
                return RedirectToPage("/Menus/UIMaestro");
            }
            return Page();
        }
    }
}