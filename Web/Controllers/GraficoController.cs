using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class GraficoController : AuthenticatedController
    {
        private readonly IDenunciaService _denunciaService;

        public GraficoController(IDenunciaService denunciaService)
        {
            _denunciaService = denunciaService;
        }

        public IActionResult Index()
        {
            return View();
        }

        public async Task<IActionResult> BuscarDadosGraficos()
        {
            var dadosGraficos = await _denunciaService.BuscarDadosGraficos();
            var jooj = "teste";

            return View("", dadosGraficos);
        }

    }
}