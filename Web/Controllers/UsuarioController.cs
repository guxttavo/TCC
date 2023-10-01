using Core.Interfaces.Repositories;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public class UsuarioController : Controller
    {
        private readonly IUsuarioRepository _usuarioRepository;
        public UsuarioController(IUsuarioRepository usuarioRepository)
        {
            _usuarioRepository = usuarioRepository;
        }

        public IActionResult Index()
        {
            List<Usuario> usuarios = _usuarioRepository.BuscarTodos();

            return View("Index", usuarios);
        }

        [HttpPost]
        public IActionResult CadastrarUsuario(Usuario usuario)
        {
            var novoUsuario = new Usuario
            {
                Nome = usuario.Nome,
                Cpf = usuario.Cpf,
                DataNascimento = usuario.DataNascimento,
                Telefone = usuario.Telefone,
                Email = usuario.Email,
                Cep = usuario.Cep,
                Senha = usuario.Senha,
                Perfil = usuario.Perfil,
                DataCadastro = DateTime.UtcNow
            };

            _usuarioRepository.CadastrarUsuario(novoUsuario);
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult ViewCadastrar()
        {
            return View("_cadastrar");
        }

        [HttpGet]
        public IActionResult ViewEditar(int id)
        {
            var usuarioSelecionado = _usuarioRepository.BuscarPorId(id);
            return View("_editar", usuarioSelecionado);
        }

        [HttpPost]
        public IActionResult EditarUsuario(Usuario usuario)
        {
            _usuarioRepository.EditarUsuario(usuario);
            return RedirectToAction("Index");
        }

        [HttpPost]
        public IActionResult DeletarUsuario(int id)
        {
            _usuarioRepository.DeletarUsuario(id);
            return RedirectToAction("Index");
        }
    }
}