using Core.Models;

namespace Core.Interfaces.Services
{
    public interface IDenunciaService
    {
        Task<List<Bairro>> BuscarBairros();
        Task<IEnumerable<Categoria>> BuscarCategorias();
        Task<IEnumerable<Categoria>> BuscarSubcategorias();
        Task CadastrarDenuncia(int idSubcategoria, int idBairro, DateTime data, string descricao, int idUsuario = 1);
        Task<IEnumerable<Denuncia>> BuscarDenuncias();
        Task<Denuncia> BuscarDadosGraficos();
    }
}