using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IDenunciaRepository
    {
        Task<List<Bairro>> BuscarBairros();
        Task<List<Categoria>> BuscarCategoriaseSubcategorias();
    }
}