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
                         ('Centro'),
                         ('Alto do Matheus');

-- Mangabeira
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 1, '2023-11-14', 'Descrição da denúncia 6'),
(2, 1, 1, '2023-11-14', 'Descrição da denúncia 7'),
(3, 1, 1, '2023-11-14', 'Descrição da denúncia 8'),
(5, 1, 1, '2023-11-14', 'Descrição da denúncia 9'),
(1, 1, 1, '2023-11-14', 'Descrição da denúncia 10'),
(2, 1, 1, '2023-11-14', 'Descrição da denúncia 11'),
(2, 1, 1, '2023-11-14', 'Descrição da denúncia 12'),
(1, 1, 1, '2023-11-14', 'Descrição da denúncia 13'),
(5, 1, 1, '2023-11-14', 'Descrição da denúncia 14'),
(3, 1, 1, '2023-11-14', 'Descrição da denúncia 15'),
(2, 1, 1, '2023-11-14', 'Descrição da denúncia 16'),
(2, 1, 1, '2023-11-14', 'Descrição da denúncia 17');

-- Valentina
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 2, '2023-11-14', 'Descrição da denúncia 6'),
(4, 1, 2, '2023-11-14', 'Descrição da denúncia 7'),
(3, 1, 2, '2023-11-14', 'Descrição da denúncia 8'),
(2, 1, 2, '2023-11-14', 'Descrição da denúncia 9'),
(1, 1, 2, '2023-11-14', 'Descrição da denúncia 10'),
(1, 1, 2, '2023-11-14', 'Descrição da denúncia 11'),
(2, 1, 2, '2023-11-14', 'Descrição da denúncia 12'),
(3, 1, 2, '2023-11-14', 'Descrição da denúncia 13'),
(4, 1, 2, '2023-11-14', 'Descrição da denúncia 14'),
(3, 1, 2, '2023-11-14', 'Descrição da denúncia 15'),
(1, 1, 2, '2023-11-14', 'Descrição da denúncia 16'),
(1, 1, 2, '2023-11-14', 'Descrição da denúncia 17');                   

-- Bancários
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 6'),
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 7'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 8'),
(1, 1, 3, '2023-11-14', 'Descrição da denúncia 9'),
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 10'),
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 11'),
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 12'),
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 13'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 14'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 15'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 16'),
(1, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 17');    

-- Bancários
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 6'),
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 7'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 8'),
(1, 1, 3, '2023-11-14', 'Descrição da denúncia 9'),
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 10'),
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 11'),
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 12'),
(4, 1, 3, '2023-11-14', 'Descrição da denúncia 13'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 14'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 15'),
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 16'),
(1, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 3, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 3, '2023-11-14', 'Descrição da denúncia 17');                

-- Cristo
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 6'),
(1, 1, 4, '2023-11-14', 'Descrição da denúncia 7'),
(5, 1, 4, '2023-11-14', 'Descrição da denúncia 16'),
(5, 1, 4, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 4, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 4, '2023-11-14', 'Descrição da denúncia 17');                

-- Manaíra
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 6'),
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 7'),
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 16'),
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 5, '2023-11-14', 'Descrição da denúncia 17');                

-- Cruz das Armas
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(2, 1, 6, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 6, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 6, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 6, '2023-11-14', 'Descrição da denúncia 17'),                
(1, 1, 6, '2023-11-14', 'Descrição da denúncia 17');                

-- Brisamar
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),                
(4, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),         
(2, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 7, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 7, '2023-11-14', 'Descrição da denúncia 17');          

-- Altiplano
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),         
(3, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 8, '2023-11-14', 'Descrição da denúncia 17');      

-- Geisel
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),         
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),         
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),         
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),         
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),         
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 9, '2023-11-14', 'Descrição da denúncia 17');    

-- José Américo
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),                
(2, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),                
(3, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),         
(3, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 10, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 10, '2023-11-14', 'Descrição da denúncia 17');  

-- Miramar
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(4, 1, 11, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 11, '2023-11-14', 'Descrição da denúncia 17'),          
(4, 1, 11, '2023-11-14', 'Descrição da denúncia 17');  

-- Bessa
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17');

-- Cabo Branco
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17');
-- Bessa
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 12, '2023-11-14', 'Descrição da denúncia 17');

-- Cabo Branco
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),          
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 13, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 13, '2023-11-14', 'Descrição da denúncia 17');

-- Bairro das Indústrias
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 14, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 14, '2023-11-14', 'Descrição da denúncia 17');

-- Centro
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),          
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 15, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 15, '2023-11-14', 'Descrição da denúncia 17');

-- Alto do Matheus
INSERT INTO Denuncia (id_categoria, id_usuario, id_bairro, Data, Descricao) VALUES 
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),          
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),          
(2, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(2, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(5, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(1, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(3, 1, 16, '2023-11-14', 'Descrição da denúncia 17'),
(4, 1, 16, '2023-11-14', 'Descrição da denúncia 17');

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
