create database castellovers;

use castellovers;

create table if not exists alunos (
    id_aluno bigint AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (60) not null,
    cpf VARCHAR (14) not null unique,
    status_aluno enum('ativo', 'inativo', 'concluido') default 'ativo',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--visualizar todos os bd
show schemas;
--visualizar tabelas do bd
show tables;

--descrição de atributos da tabela aluno
describe alunos

--apagar bd
drop database castellovers;