using Core.Interfaces.Repositories;
using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class DenunciaController : AuthenticatedController
    {
        private readonly IDenunciaService _denunciaService;
        private readonly IDenunciaRepository _denunciaRepository;

        public DenunciaController(IDenunciaService denunciaService, IDenunciaRepository denunciaRepository)
        {
            _denunciaService = denunciaService;
            _denunciaRepository = denunciaRepository;
        }

        public async Task<IActionResult> Index()
        {
            IEnumerable<Categoria> categorias = await _denunciaService.BuscarCategorias();
            ViewBag.BuscarBairros = await _denunciaRepository.BuscarBairros();

            return View("Index", categorias);
        }

        public async Task<IActionResult> CadastrarDenuncia(int idCategoria, int idSubcategoria, int idBairro, DateTime data, string descricao, int idUsuario = 1)
        {
            // await _denunciaService.CadastrarDenuncia(idSubcategoria, idBairro, data, descricao, idUsuario);
            Denuncia denuncia = new Denuncia
            {
                IdCategoria = idCategoria,
                Categoria = new Categoria
                {
                    IdCategoriaPai = idSubcategoria
                },
                IdBairro = idBairro,
                Data = data,
                Descricao = descricao,
                IdUsuario = idUsuario
            };

            await _denunciaService.CadastrarDenuncia(denuncia);

            return RedirectToAction("Index");
        }

        // [HttpPost]
        // public IActionResult FecharDenuncia(int id)
        // {
        //     _denunciaService.FecharDenuncia(id);
        //     return RedirectToAction("Index");
        // }

        // [HttpGet]
        // public IActionResult ViewEditarDenuncia(int id)
        // {
        //     var denunciaSelecionada = _denunciaRepository.BuscarDenuncia(id);
        //     ViewBag.BuscarBairros = _denunciaRepository.BuscarBairros();

        //     return View("_editar", denunciaSelecionada);
        // }

        [HttpPost]
        public IActionResult EditarDenuncia(Denuncia denuncia)
        {
            _denunciaRepository.EditarDenuncia(denuncia);
            return RedirectToAction("Index");
        }
    }
}