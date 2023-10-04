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

        public Task<List<Categoria>> BuscarCategoriaseSubcategorias()
        {
            throw new NotImplementedException();
        }

        // public Task<List<Categoria>> BuscarCategorias()
        // {
        //     return _denunciaRepository.BuscarCategorias();

        // }

        public Task<List<Subcategoria>> BuscarSubcategorias()
        {
            return _denunciaRepository.BuscarSubcategorias();
        }
    }
}