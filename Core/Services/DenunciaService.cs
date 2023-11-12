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

        public Task<Denuncia> CadastrarDenuncia(Denuncia denuncia)
        {
            return _denunciaRepository.CadastrarDenuncia(denuncia);
        }

        public Task<Denuncia> BuscarDadosGraficos()
        {
            return _denunciaRepository.BuscarDadosGraficos();

        }

        public Task<IEnumerable<Denuncia>> BuscarDenuncias()
        {
            return _denunciaRepository.BuscarDenuncias();
        }
    }
}