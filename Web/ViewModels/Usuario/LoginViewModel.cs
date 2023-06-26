using Core.Helpers;

namespace Web.ViewModels.Usuario
{
    public class LoginViewModel
    {
        public string Email { get; set; }
        public string Senha { get; set; }
        public int? ManterConectado { get; set; }

        public bool IsValid(Notification _notification)
        {
            if (string.IsNullOrEmpty(Email) || string.IsNullOrEmpty(Senha))
                _notification.Add("Email e senha são obrigatórios");

            return !_notification.Any();
        }

    }
}