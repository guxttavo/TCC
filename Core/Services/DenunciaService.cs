using Core.Interfaces.Repositories;
using Core.Interfaces.Services;
using Core.Models;

namespace Core.Services
{
    public class DenunciaService : IDenunciaService
    {
        private readonly IDenunciaRepository _denunciaRepository;

        public DenunciaService(IDenunciaRepository denunciaRepository)
        {
            _denunciaRepository = denunciaRepository;
        }
        public Task<List<Bairro>> BuscarBairros()
        {
            return _denunciaRepository.BuscarBairros();
        }

        public Task<IEnumerable<Categoria>> BuscarCategorias()
        {
            return _denunciaRepository.BuscarCategorias();
        }
        public Task<IEnumerable<Categoria>> BuscarSubcategorias()
        {
            return _denunciaRepository.BuscarSubcategorias();
        }

        public async Task CadastrarDenuncia(int idSubcategoria, int idBairro, DateTime data, string descricao, int idUsuario = 1)
        {
            Denuncia denuncia = new Denuncia
            {
                IdCategoria = idSubcategoria,
                IdUsuario = idUsuario,
                IdBairro = idBairro,
                Data = data.Date.ToUniversalTime(),
                Descricao = descricao
            };

            await _denunciaRepository.CadastrarDenuncia(denuncia);
        }
    }
}