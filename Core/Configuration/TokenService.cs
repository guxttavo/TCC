using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using Core.Models;
using Microsoft.IdentityModel.Tokens;

namespace Core.Configuration
{
    public static class TokenService
    {
        // public static string GenerateToken(Usuario usuario, string chave)
        // {
        //     var tokenHandler = new JwtSecurityTokenHandler();
        //     var key = Encoding.ASCII.GetBytes(chave);

        //     var tokenDescriptor = new SecurityTokenDescriptor
        //     {
        //         Subject = new ClaimsIdentity(new[]
        //         {
        //             new Claim(ClaimTypes.Name, usuario.Id.ToString()),

        //         })
        //     };
        // }
    }
}