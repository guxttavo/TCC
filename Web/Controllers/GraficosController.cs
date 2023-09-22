using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class GraficosController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}