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
            return _dbContext.Usuarios.FirstOrDefault(x => x.id == id);
        }
        public Usuario CadastrarUsuario(Usuario usuario)
        {
            _dbContext.Usuarios.Add(usuario);
            _dbContext.SaveChanges();

            return usuario;
        }

        public Usuario EditarUsuario(Usuario usuario)
        {
            Usuario usuarioDb = BuscarPorId(usuario.id);

            usuarioDb.nome_completo = usuario.nome_completo;
            usuarioDb.apelido = usuario.apelido;
            usuarioDb.email = usuario.email;
            usuarioDb.senha = usuario.senha;
            usuarioDb.perfil = usuario.perfil;
            usuarioDb.data_cadastro = DateTime.Now;

            _dbContext.Update(usuarioDb);
            _dbContext.SaveChanges();

            return usuarioDb;

            // _dbContext.Usuarios.Update(usuario);
            // _dbContext.SaveChanges();
            // return usuario;
        }

        public bool DeletarUsuario(int id)
        {
            Usuario usuarioDB = BuscarPorId(id);

            _dbContext.Usuarios.Remove(usuarioDB);
            _dbContext.SaveChanges();

            return true;
        }

        public Usuario BuscarPorLogin(string apelido)
        {
            return _dbContext.Usuarios.FirstOrDefault(x => x.apelido.ToUpper() == apelido.ToUpper());
        }
    }
}

