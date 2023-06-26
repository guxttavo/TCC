using Core.Helpers;
using Core.Interfaces;
using Core.Interfaces.Repositories;
using Core.Settings;
using Data;
using Data.Repositories;

namespace Web.Configurations
{
    public static class DependecyInjection
    {
        public static void AddDependencies(this IServiceCollection services, AppSettings appSettings)
        {
            services.AddSingleton(appSettings);

            services.AddControllersWithViews();

            services.AddScoped<ApplicationDbContext>();
            services.AddScoped<Notification>();
            services.AddScoped<CryptographySettings>();
            services.AddScoped<IBairroRepository, BairroRepository>();
            services.AddScoped<IUsuarioRepository, UsuarioRepository>();
        }
    }
}