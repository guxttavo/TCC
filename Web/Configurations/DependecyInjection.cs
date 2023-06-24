using Core.Interfaces;
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
            services.AddScoped<IBairroRepository, BairroRepository>();
        }
    }
}