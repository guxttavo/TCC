using Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Data.Configurations.Application
{
    public class UsuarioConfiguration : IEntityTypeConfiguration<Usuario>
    {
        public void Configure(EntityTypeBuilder<Usuario> builder)
        {
            builder.ToTable("usuario", "public");

            builder.HasKey(x => x.id).HasName("pk_usuario");

            builder.Property(x => x.id).ValueGeneratedOnAdd().HasColumnName("id");
            builder.Property(x => x.nome_completo).HasColumnName("nome_completo");
            builder.Property(x => x.apelido).HasColumnName("apelido");
            builder.Property(x => x.email).HasColumnName("email");
            builder.Property(x => x.senha).HasColumnName("senha");
            builder.Property(x => x.perfil).HasColumnName("perfil");
            builder.Property(x => x.data_cadastro).HasColumnName("data_cadastro");
        }
    }
}