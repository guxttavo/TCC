using System.IdentityModel.Tokens.Jwt;

namespace Core.Extensions
{
    public class DecodeToken
    {
        public static JwtSecurityToken Handler(string token)
        {
            var handler = new JwtSecurityTokenHandler();
            var readToken = handler.ReadToken(token) as JwtSecurityToken;

            return readToken;
        }
    }
}