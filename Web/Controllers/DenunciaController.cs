using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class DenunciaController : AuthenticatedController
    {
        private readonly IDenunciaService _denunciaService;

        public DenunciaController(IDenunciaService denunciaService)
        {
            _denunciaService = denunciaService;
        }

        public async Task<IActionResult> Index()
        {
            ViewBag.BuscarBairros = await _denunciaService.BuscarBairros();
            ViewBag.BuscarSubcategorias = await _denunciaService.BuscarSubcategorias();
            return View();
        }
    }
}