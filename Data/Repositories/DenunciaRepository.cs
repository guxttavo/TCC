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

        public async Task<List<Categoria>> BuscarCategoriaseSubcategorias()
        {
            // var categorias = _dbContext.Categorias.Select(categoria => new Categoria
            // {
            //     Id = categoria.Id,
            //     Nome = categoria.Nome,
            //     Subcategorias = categoria.Subcategorias
            //              .Where(subcategoria => subcategoria.IdCategoria == categoria.Id)
            //              .Select(subcategoria => new Subcategoria
            //              {
            //                  Id = subcategoria.Id,
            //                  Nome = subcategoria.Nome,
            //                  IdCategoria = categoria.Id
            //              })
            // })
            // .ToList();

            // return categorias;
            var categorias = _dbContext.Categorias.Select(x => new Categoria
            {
                Id = x.Id,
                Nome = x.Nome
            })
            .ToList();

            return categorias;
        }
    }
}