using Core.Interfaces;
using Core.Models;

namespace Data.Repositories
{
    public class BairroRepository : IBairroRepository
    {
        private readonly ApplicationDbContext _applicationsDbContext;

        public BairroRepository(ApplicationDbContext applicationsDbContext)
        {
            _applicationsDbContext = applicationsDbContext;
        }

        public IEnumerable<Bairro> BuscarBairros()
        {
            return _applicationsDbContext.Bairros.ToList();
        }
    }
}