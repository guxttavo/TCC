namespace Core.Models
{
    public class Categoria
    {
        public int Id { get; set; }
        public string Nome { get; set; }

        public IEnumerable<Subcategoria> Subcategorias { get; set; }
        public IEnumerable<Denuncia> Denuncias { get; set; }
    }
}