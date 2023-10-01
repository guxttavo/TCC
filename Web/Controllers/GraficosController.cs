using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class GraficosController : AuthenticatedController
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}