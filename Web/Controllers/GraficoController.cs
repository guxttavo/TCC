using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class GraficoController : AuthenticatedController
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}