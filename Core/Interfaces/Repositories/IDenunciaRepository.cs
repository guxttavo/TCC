using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IDenunciaRepository
    {
        Task<List<Bairro>> BuscarBairros();
        Task<IEnumerable<Categoria>> BuscarCategorias();
        Task<IEnumerable<Categoria>> BuscarSubcategorias();
        Task<Denuncia> BuscarDadosGraficos();
        Task<IEnumerable<Denuncia>> BuscarDenuncias();
        Task<Denuncia> CadastrarDenuncia(Denuncia denuncia);
    }
}