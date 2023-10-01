using Core.Helpers;

namespace Web.ViewModels.Login
{
    public class LoginViewModel
    {
        public string Email { get; set; }
        public string Senha { get; set; }
        public int? ManterConectado { get; set; }

        public bool IsValid(Notification _notification)
        {
            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Senha))
                _notification.Add("Apelido e senha são obrigatórios");

            return !_notification.Any();
        }

        public bool SenhaValida(string senha)
        {
            return Senha == senha;
        }
    }
}