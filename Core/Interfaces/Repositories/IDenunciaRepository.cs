using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IDenunciaRepository
    {
        Task<List<Bairro>> BuscarBairros();
        Task<IEnumerable<Categoria>> BuscarCategorias();
        Task<IEnumerable<Categoria>> BuscarSubcategorias();
        Task CadastrarDenuncia(Denuncia denuncia);
        Task<IEnumerable<Bairro>> QtdDenunciaPorBairro();
        Task<IEnumerable<Categoria>> QtdDenunciaPorCategoria();
        Task<IEnumerable<Denuncia>> QtdDenunciasPorCategoriaPorBairro();
        Task<IEnumerable<Denuncia>> BuscarDenuncias();
        bool FecharDenuncia(int id);
    }
}