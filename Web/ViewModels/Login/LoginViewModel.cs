using Core.Helpers;

namespace Web.ViewModels.Login
{
    public class LoginViewModel
    {
        public string Apelido { get; set; }
        public string Senha { get; set; }

        public bool IsValid(Notification _notification)
        {
            if (string.IsNullOrEmpty(Apelido) || string.IsNullOrEmpty(Senha))
                _notification.Add("Apelido e senha são obrigatórios");

            return !_notification.Any();
        }

        public bool SenhaValida(string senha)
        {
            return Senha == senha;
        }
    }
}