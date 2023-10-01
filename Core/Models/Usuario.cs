using Core.Enum;

namespace Core.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public long Cpf { get; set; }
        public DateTime DataNascimento { get; set; }
        public long Telefone { get; set; }
        public string Email { get; set; }
        public int Cep { get; set; }
        public string Senha { get; set; }
        public PerfilEnum Perfil { get; set; }
        public DateTime DataCadastro { get; set; }

        public IEnumerable<Suporte> Suportes { get; set; }
    }
}
