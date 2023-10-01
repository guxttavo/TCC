using Core.Interfaces.Repositories;
using Core.Models;

namespace Data.Repositories
{
    public class UsuarioRepository : IUsuarioRepository
    {
        private readonly ApplicationDbContext _dbContext;

        public UsuarioRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }
        public List<Usuario> BuscarTodos()
        {
            return _dbContext.Usuarios.ToList();
        }
        public Usuario BuscarPorId(int id)
        {
            return _dbContext.Usuarios.FirstOrDefault(x => x.Id == id);
        }
        public Usuario CadastrarUsuario(Usuario usuario)
        {
            _dbContext.Usuarios.Add(usuario);
            _dbContext.SaveChanges();

            return usuario;
        }

        public Usuario EditarUsuario(Usuario usuario)
        {
            Usuario usuarioDb = BuscarPorId(usuario.Id);

            if (usuarioDb != null)
            {
                usuarioDb.Nome = usuario.Nome;
                usuarioDb.Cpf = usuario.Cpf;
                usuarioDb.DataNascimento = usuario.DataNascimento;
                usuarioDb.Telefone = usuario.Telefone;
                usuarioDb.Email = usuario.Email;
                usuarioDb.Cep = usuario.Cep;
                usuarioDb.Senha = usuario.Senha;
                usuarioDb.Perfil = usuario.Perfil;
                usuarioDb.DataCadastro = DateTime.Now;
                _dbContext.Update(usuarioDb);
                _dbContext.SaveChanges();
            }

            return usuarioDb;
        }

        public bool DeletarUsuario(int id)
        {
            Usuario usuarioDB = BuscarPorId(id);

            _dbContext.Usuarios.Remove(usuarioDB);
            _dbContext.SaveChanges();

            return true;
        }

        public Usuario BuscarPorEmail(string email)
        {
            return _dbContext.Usuarios.FirstOrDefault(x => x.Email.ToUpper() == email.ToUpper());
        }
    }
}

