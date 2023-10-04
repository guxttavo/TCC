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

        public Task<List<Categoria>> BuscarCategoriaseSubcategorias()
        {
            return _dbContext.Categorias
            .AsSingleQuery()
            .Select(x => new Categoria
            {
                Nome = x.Nome,
                Subcategorias = x.Select(y => new Subcategoria
                {
                    Nome = x.Nome
                })
            }).GroupBy(x => x.Subcategoria).ToListAsync();
        }
  
    }
}