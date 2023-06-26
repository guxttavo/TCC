using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IUsuarioRepository
    {
        Task<Usuario> BuscarPorEmail(string email);

    }
}