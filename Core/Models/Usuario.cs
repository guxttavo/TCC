using Core.Enum;

namespace Core.Models
{
    public class Usuario
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public int Cpf { get; set; }
        public DateTime DataNascimento { get; set; }
        public int Telefone { get; set; }
        public string Email { get; set; }
        public int Cep { get; set; }
        public string Senha { get; set; }
        public PerfilEnum Perfil { get; set; }
        public DateTime DataCadastro { get; set; }
    }
}
