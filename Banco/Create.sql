CREATE TABLE tipo_denuncia(
    id INT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(30) NOT  NULL,
    CONSTRAINT pk_tipo_denuncia PRIMARY KEY(id)
);

CREATE TABLE bairro(
    id smallint GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100) NOT NULL,
	CONSTRAINT pk_bairro PRIMARY KEY(id)
);

CREATE TABLE usuario(
    id INT GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(100) NOT NULL,
    cpf BIGINT NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone BIGINT NOT NULL,
    email VARCHAR(100) NOT NULL,
    cep INT NOT NULL,
    senha VARCHAR(100) NOT NULL,
    perfil INT NOT NULL,
    data_cadastro DATE NOT NULL,

    CONSTRAINT pk_usuario PRIMARY KEY(id)
);

CREATE TABLE denuncia(
    id INT GENERATED ALWAYS AS IDENTITY,
    data_denuncia DATE NOT NULL,
    cep CHAR(8) NOT NULL,
    descricao VARCHAR(1000) NOT NULL,
    id_usuario INT NOT NULL,
    id_tipo_denuncia INT NOT NULL,
    id_bairro INT NOT NULL,
    CONSTRAINT fk_usuario FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
    CONSTRAINT fk_tipo_denuncia FOREIGN KEY(id_tipo_denuncia) REFERENCES tipo_denuncia(id_tipo_denuncia),
    CONSTRAINT fk_bairro FOREIGN KEY(id_bairro) REFERENCES bairro(id_bairro)
);
