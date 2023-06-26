using Core.Configuration;
using Core.Helpers;
using Core.Interfaces.Repositories;
using Core.Settings;
using Microsoft.AspNetCore.Mvc;
using Web.ViewModels.Usuario;

namespace Web.Controllers
{
    public class LoginController : Controller
    {
        private readonly Notification _notification;
        private readonly IUsuarioRepository _usuarioRepository;
        private readonly CryptographySettings _cryptographySettings;

        public LoginController(Notification notification, IUsuarioRepository usuarioRepository, CryptographySettings cryptographySettings)
        {
            _notification = notification;
            _usuarioRepository = usuarioRepository;
            _cryptographySettings = cryptographySettings;
        }

        public IActionResult Index() => View();

        [HttpPost("Logar")]
        public async Task<IActionResult> Logar(LoginViewModel loginViewModel)
        {
            if (!loginViewModel.IsValid(_notification))
                return BadRequest(_notification);

            var usuario = await _usuarioRepository.BuscarPorEmail(loginViewModel.Email);

            if (!loginViewModel.Senha.Cryptograph().Equals(usuario.Senha))
                return BadRequest("Email ou senha incorretos!");

            return Ok();
        }

    }
}
