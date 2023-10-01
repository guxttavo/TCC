using Core.Models;
using Core.Settings;
using Microsoft.EntityFrameworkCore;

namespace Data
{
    public class ApplicationDbContext : BaseDbContext
    {
        public ApplicationDbContext(AppSettings appSettings) : base(appSettings, "Application")
        {
        }

        public DbSet<Usuario> Usuarios { get; set; }
        public DbSet<Suporte> Suporte { get; set; }
    }
}