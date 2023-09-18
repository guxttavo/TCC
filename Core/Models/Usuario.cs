using Core.Enum;

namespace Core.Models
{
    public class Usuario
    {
        public int id { get; set; }
        public string? nome_completo { get; set; }
        public string? apelido { get; set; }
        public string? email { get; set; }
        public string? senha { get; set; }
        public PerfilEnum perfil { get; set; }
        public DateTime data_cadastro { get; set; }
    }
}
