using Core.Helpers;

namespace Web.ViewModels.Login
{
    public class LoginViewModel
    {
        public string Nome { get; set; }
        public string Senha { get; set; }

        public bool IsValid(Notification _notification)
        {
            if (string.IsNullOrEmpty(Nome) || string.IsNullOrEmpty(Senha))
                _notification.Add("Apelido e senha são obrigatórios");

            return !_notification.Any();
        }

        public bool SenhaValida(string senha)
        {
            return Senha == senha;
        }
    }
}