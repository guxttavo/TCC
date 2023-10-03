INSERT INTO categoria(nome)
                         VALUES('Iluminação Pública'),
                               ('Saneamento Básico'),
                               ('Mobilidade Urbana'),
                               ('Gestão de Resíduos'),
                               ('Espaços Públicos');

INSERT INTO subcategoria(nome)
                         VALUES('Postes e/ou Afiação Danificados', 1),
                               ('Quedas de Energia', 1),
                               ('Infraestrutura Antiga', 1),
                               ('Fornecimento de Água', 2),
                               ('Esgoto a Céu Aberto', 2),
                               ('Coleta de Lixo Ineficiente', 2),
                               ('Ausência de Calçamentos', 3),
                               ('Ausência/Poucas Paradas', 3)
                               ('Acúmulo de Lixo', 4),
                               ('Falta de Praças', 5),
                               ('Ausência de Ciclovias e/ou Faixas para Padestres', 5);                            

INSERT INTO usuario (nome, cpf, data_nascimento, telefone, email, cep, senha, perfil, data_cadastro)
                    VALUES ('Admin', 12345678901, '2000-01-01', 1234567890, 'admin@gmail.com', 12345, '123', 1, '2023-09-30'),
                           ('Padrao', 12345678901, '2000-01-01', 1234567890, 'padrao@gmail.com', 12345, '123', 2, '2023-09-30');

INSERT INTO bairro(nome)
                   VALUES('Mangabeira'),
                         ('Valentina'),
                         ('Bancários'),
                         ('Cristo'),
                         ('Manaíra'),
                         ('Cruz das Armas'),
                         ('Brisamar'),
                         ('Altiplano'),
                         ('Geisel'),
                         ('José Américo'),
                         ('Miramar'),
                         ('Bessa'),
                         ('Cabo Branco'),
                         ('Bairro das Indústrias'),
                         ('Castelo Branco');


INSERT INTO suporte (assunto, descricao, id_usuario)
VALUES
    ('Problema com o software', 'Estou enfrentando um problema ao usar o software XPTO. Ele trava sempre que tento realizar uma ação específica.', 3);


-- INSERT INTO urgencia(nome)
--                      VALUES('');
