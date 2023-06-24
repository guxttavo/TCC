using Core.Models;

namespace Core.Interfaces
{
    public interface IBairroRepository
    {
        IEnumerable<Bairro> BuscarBairros();

    }
}