using Core.Models;

namespace Core.Interfaces.Services
{
    public interface IDenunciaService
    {
        Task<List<Bairro>> BuscarBairros();
        Task<IEnumerable<Categoria>> BuscarCategorias();
        Task<IEnumerable<Categoria>> BuscarSubcategorias();
        Task CadastrarDenuncia(Denuncia denuncia);
        Task<IEnumerable<Denuncia>> BuscarDenuncias();
        // Task<Denuncia> BuscarDadosGraficos();
        bool FecharDenuncia(int id);
    }
}