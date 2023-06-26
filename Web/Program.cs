using Core.Settings;
using Web.Configurations;

var builder = WebApplication.CreateBuilder(args);

IConfiguration configurations = builder.Configuration;

var appSettings = configurations.Get<AppSettings>();

builder.Services.AddDependencies(appSettings);

var app = builder.Build();

if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=TelaInicial}/{action=Index}/{id?}");

app.Run();
