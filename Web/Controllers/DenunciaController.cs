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
            // var idCategoriaPai = _denunciaService.BuscarSubcategorias();
            // return RedirectToAction("");
            await _denunciaService.CadastrarDenuncia(new Denuncia
            {
                Id = denuncia.Id,
                Data = denuncia.Data,
                Descricao = denuncia.Descricao,
                IdUsuario = denuncia.IdUsuario,
                IdCategoria = denuncia.IdCategoria,
                IdBairro = denuncia.IdBairro,
            });

            return null;
        }
    }
}