using Core.Helpers;
using Core.Interfaces.Repositories;
using Microsoft.AspNetCore.Mvc;
using Web.ViewModels.Login;

namespace Web.Controllers
{
    public class LoginController : Controller
    {
        private readonly Notification _notification;
        private readonly IUsuarioRepository _usuarioRepository;

        public LoginController(Notification notification, IUsuarioRepository usuarioRepository)
        {
            _notification = notification;
            _usuarioRepository = usuarioRepository;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Entrar(LoginViewModel loginViewModel)
        {
            if (!loginViewModel.IsValid(_notification))
            {
                return BadRequest(_notification);
            }

            var usuario = _usuarioRepository.BuscarPorLogin(loginViewModel.Nome);

            if (!loginViewModel.Senha.Equals(usuario.Senha) || (!loginViewModel.Nome.Equals(usuario.Nome)))
            {
                return BadRequest("Login ou senha incorretos!");
            }
            else
            {
                return Ok();
            }
        }

    }
}
