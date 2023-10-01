using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class DenunciaController : AuthenticatedController
    {

        public IActionResult Index()
        {
            return View();
        }
    }
}