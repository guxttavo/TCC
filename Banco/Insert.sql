ALTER SEQUENCE categoria_id_seq RESTART;
ALTER SEQUENCE usuario_id_seq RESTART;
ALTER SEQUENCE bairro_id_seq RESTART;
ALTER SEQUENCE suporte_id_seq RESTART;

INSERT INTO categoria(nome, id_categoria_pai)
                         VALUES('Iluminação Pública', NULL),
                               ('Saneamento Básico', NULL),
                               ('Mobilidade Urbana', NULL),
                               ('Gestão de Resíduos', NULL),
                               ('Espaços Públicos', NULL),
                               ('Postes e/ou Afiação Danificados', 1),
                               ('Quedas de Energia', 1),
                               ('Infraestrutura Antiga', 1),
                               ('Fornecimento de Água', 2),
                               ('Esgoto a Céu Aberto', 2),
                               ('Coleta de Lixo Ineficiente', 2),
                               ('Ausência de Calçamentos', 3),
                               ('Ausência/Poucas Paradas', 3),
                               ('Acúmulo de Lixo', 4),
                               ('Falta de Praças', 5),
                               ('Ausência de Ciclovias e/ou Faixas para Padestres', 5);

INSERT INTO usuario (nome, cpf, data_nascimento, telefone, email, cep, senha, admin, data_cadastro)
                    VALUES ('Admin', 12345678901, '2000-01-01', 1234567890, 'admin@gmail.com', 12345, '123', true, '2023-09-30'),
                           ('Padrao', 12345678901, '2000-01-01', 1234567890, 'padrao@gmail.com', 12345, '123', false, '2023-09-30');

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
                         ('Castelo Branco'),
                         ('Mandacaru'),
                         ('Jaguaribe'),
                         ('Centro'),
                         ('Alto do Matheus');

INSERT INTO denuncia (data, descricao, id_usuario, id_categoria, id_bairro)
VALUES ('2023-11-11', 'Descrição da denúncia 1', 1, 2, 3);                         

-- Iluminação Pública                            
--   -Postes e/ou Afiação Danificados
--   -Quedas de Energia
--   -Infraestrutura Antiga
-- Saneamento Básico
--   -Fornecimento de Água
--   -Esgoto a Céu Aberto
--   -Coleta de Lixo Ineficiente
-- Mobilidade Urbana  
--   -Ausência de Calçamentos
--   -Ausência/Poucas Paradas
-- Gestão de Resíduos
--   -Acúmulo de Lixo
-- Espaços Públicos
--   -Falta de Praças
--   -Ausência de Ciclovias e/ou Faixas para Padestres      
