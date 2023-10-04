using Core.Models;

namespace Core.Interfaces.Services
{
    public interface IDenunciaService
    {
        Task<List<Bairro>> BuscarBairros();
        Task<List<Categoria>> BuscarCategoriaseSubcategorias();
        Task<List<Subcategoria>> BuscarSubcategorias();
        
    }
}