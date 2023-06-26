using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class TelaInicialController : Controller
    {

        public IActionResult Index() => View();

    }
}