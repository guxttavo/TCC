using Core.Interfaces.Repositories;
using Core.Models;
using Microsoft.EntityFrameworkCore;

namespace Data.Repositories
{
    public class DenunciaRepository : IDenunciaRepository
    {
        private readonly ApplicationDbContext _dbContext;

        public DenunciaRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public Task<List<Bairro>> BuscarBairros()
        {
            return _dbContext.Bairros
            .AsSingleQuery()
            .Select(x => new Bairro
            {
                Nome = x.Nome
            }).ToListAsync();
        }

        public async Task<IEnumerable<Categoria>> BuscarCategorias()
        {
            return await _dbContext.Categorias
                                   .ToListAsync();
        }

        public async Task<IEnumerable<Categoria>> BuscarSubcategorias()
        {
            return await _dbContext.Categorias
                                   .Where(x => x.IdCategoriaPai != null && x.Id == x.IdCategoriaPai)
                                   .ToListAsync();
        }

        public async Task<Denuncia> BuscarDadosGraficos()
        {
            return await _dbContext.Denuncias
                                   .Select(x => new Denuncia
                                   {
                                       Data = x.Data,
                                       Bairro = new Bairro
                                       {
                                           Nome = x.Bairro.Nome
                                       },
                                       Categoria = new Categoria
                                       {
                                           Nome = x.Categoria.Nome
                                       }
                                   })
                                   .FirstOrDefaultAsync();
        }

        public async Task<Denuncia> CadastrarDenuncia(Denuncia denuncia)
        {
            // return await _dbContext.Denuncias.AddAsync
            return null;
        }
    }
}