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
            IEnumerable<Categoria> categorias = await _denunciaService.BuscarCategorias();
            ViewBag.BuscarBairros = await _denunciaService.BuscarBairros();

            return View("Index", categorias);
        }

        public async Task<IActionResult> CadastrarDenuncia(Denuncia denuncia)
        {
            _denunciaService.CadastrarDenuncia(denuncia);
            return RedirectToAction("");
        }

    }
}