using Core.Interfaces.Services;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers;

public class HomeController : AuthenticatedController
{
    private readonly IDenunciaService _denunciaService;

    public HomeController(IDenunciaService denunciaService)
    {
        _denunciaService = denunciaService;
    }
    public async Task<ActionResult> Index()
    {
        IEnumerable<Denuncia> denuncias = await _denunciaService.BuscarDenuncias();

        return View("Index", denuncias);
    }
}
