using Core.Models;

namespace Core.Interfaces.Repositories
{
    public interface IDenunciaRepository
    {
        Task<List<Bairro>> BuscarBairros();
        Task<IEnumerable<Categoria>> BuscarCategorias();
        Denuncia BuscarDenuncia(int id);
        Task<IEnumerable<Categoria>> BuscarSubcategorias();
        Task CadastrarDenuncia(Denuncia denuncia);
        Task<IEnumerable<Bairro>> QtdDenunciaPorBairro();
        Task<IEnumerable<Categoria>> QtdDenunciaPorCategoria();
        Task<IEnumerable<Bairro>> QtdDenunciasPorCategoriaPorBairro();
        Task<IEnumerable<Denuncia>> BuscarDenuncias();
        bool FecharDenuncia(int id);
        Denuncia EditarDenuncia(Denuncia denuncia);

    }
}