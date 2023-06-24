using Core.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    [Route("Bairro")]
    public class BairroController : Controller
    {
        private readonly IBairroRepository _bairroRepository;

        public BairroController(IBairroRepository bairroRepository)
        {
            _bairroRepository = bairroRepository;
        }

        public ActionResult Index() => View();
    }
}