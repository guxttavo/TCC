using Core.Interfaces.Repositories;
using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers;

public class HomeController : AuthenticatedController
{
    private readonly IDenunciaService _denunciaService;
    private readonly IDenunciaRepository _denunciaRepository;


    public HomeController(IDenunciaService denunciaService, IDenunciaRepository denunciaRepository)
    {
        _denunciaService = denunciaService;
        _denunciaRepository = denunciaRepository;
    }
    public async Task<ActionResult> Index()
    {
        IEnumerable<Denuncia> denuncias = await _denunciaService.BuscarDenuncias();
        ViewBag.BuscarBairros = await _denunciaRepository.BuscarBairros();


        return View("Index", denuncias);
    }
}
