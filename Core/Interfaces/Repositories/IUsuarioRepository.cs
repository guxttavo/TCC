using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IUsuarioRepository
    {
        List<Usuario> BuscarTodos();
        Usuario BuscarPorId(int id);
        Usuario BuscarPorLogin(string apelido);
        Usuario CadastrarUsuario(Usuario usuario);
        Usuario EditarUsuario(Usuario usuario);
        bool DeletarUsuario(int id);
    }
}