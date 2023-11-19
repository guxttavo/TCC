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

INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 2, '2023-11-14', 'Descrição da denúncia 6'),
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 7'),
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 8'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 9'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 10'),
(1, 1, 18, '2023-11-14', 'Descrição da denúncia 11'),
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 12'),
(2, 1, 7, '2023-11-14', 'Descrição da denúncia 13'),
(4, 1, 11, '2023-11-14', 'Descrição da denúncia 14'),
(1, 1, 16, '2023-11-14', 'Descrição da denúncia 15'),
(5, 1, 19, '2023-11-14', 'Descrição da denúncia 16'),
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 8, '2023-11-14', 'Descrição da denúncia 18'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 19'),
(1, 1, 6, '2023-11-14', 'Descrição da denúncia 20'),
(5, 1, 10, '2023-11-14', 'Descrição da denúncia 21'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 22'),
(4, 1, 17, '2023-11-14', 'Descrição da denúncia 23'),
(3, 1, 1, '2023-11-14', 'Descrição da denúncia 24'),
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 25'),
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 26'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 27'),
(5, 1, 4, '2023-11-14', 'Descrição da denúncia 28'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 29'),
(1, 1, 19, '2023-11-14', 'Descrição da denúncia 30'),
(2, 1, 6, '2023-11-14', 'Descrição da denúncia 31'),
(3, 1, 10, '2023-11-14', 'Descrição da denúncia 32'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 33'),
(5, 1, 2, '2023-11-14', 'Descrição da denúncia 34'),
(1, 1, 8, '2023-11-14', 'Descrição da denúncia 35'),
(3, 1, 11, '2023-11-14', 'Descrição da denúncia 36'),
(2, 1, 17, '2023-11-14', 'Descrição da denúncia 37'),
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 38'),
(1, 1, 7, '2023-11-14', 'Descrição da denúncia 39'),
(5, 1, 13, '2023-11-14', 'Descrição da denúncia 40'),
(2, 1, 18, '2023-11-14', 'Descrição da denúncia 41'),
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 42'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 43'),
(5, 1, 1, '2023-11-14', 'Descrição da denúncia 44'),
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 45'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 46'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 47'),
(5, 1, 17, '2023-11-14', 'Descrição da denúncia 48'),
(4, 1, 6, '2023-11-14', 'Descrição da denúncia 49'),
(1, 1, 11, '2023-11-14', 'Descrição da denúncia 50'),
(2, 1, 16, '2023-11-14', 'Descrição da denúncia 51'),
(3, 1, 7, '2023-11-14', 'Descrição da denúncia 52'),
(4, 1, 2, '2023-11-14', 'Descrição da denúncia 53'),
(5, 1, 12, '2023-11-14', 'Descrição da denúncia 54'),
(1, 1, 18, '2023-11-14', 'Descrição da denúncia 55'),
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 56'),
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 57'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 58'),
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 59'),
(5, 1, 10, '2023-11-14', 'Descrição da denúncia 60'),
(2, 1, 15, '2023-11-14', 'Descrição da denúncia 61'),
(4, 1, 1, '2023-11-14', 'Descrição da denúncia 62'),
(3, 1, 8, '2023-11-14', 'Descrição da denúncia 63'),
(5, 1, 19, '2023-11-14', 'Descrição da denúncia 64'),
(1, 1, 3, '2023-11-14', 'Descrição da denúncia 65');
                        

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
