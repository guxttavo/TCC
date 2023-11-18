using Core.Interfaces.Repositories;
using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class GraficoController : AuthenticatedController
    {
        private readonly IDenunciaRepository _denunciaRepository;

        public GraficoController(IDenunciaRepository denunciaRepository)
        {
            _denunciaRepository = denunciaRepository;
        }

        public async Task<IActionResult> Index()
        {
            // ViewBag.BuscarDadosGraficos = await _denunciaRepository.BuscarDadosGraficos();

            return View();
        }

        public async Task<IActionResult> QtdDenunciaPorBairro()
        {
            var dadosGraficos = await _denunciaRepository.QtdDenunciaPorBairro();


            return Ok(dadosGraficos);
        }
        public async Task<IActionResult> BuscarCategoriasPorBairro()
        {
            var dadosCategoriasPorBairro = await _denunciaRepository.QtdDenunciaPorCategoria();


            return Ok(dadosCategoriasPorBairro);
        }

    }
}