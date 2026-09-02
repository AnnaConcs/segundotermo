create database oficina_Anna;
use oficina_Anna;

create table clientes(
    id_cliente int AUTO_INCREMENT PRIMARY KEY,
    telefone char (15) not null,
    email varchar (150) not null,
    nome_cliente varchar (60) not null,
    endereco varchar (100) not null,
    cpf_cliente char (14) not null unique
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create Table if not exists veiculos (
     id_veiculos int AUTO_INCREMENT PRIMARY KEY,
     descricao_problema text(300) not null,
     placa char(8) not null unique,
     cor varchar (25) not null,
     marca varchar (25) not null,
     quilometragem int
);

create table if not exists marcas (
    id_marca INT AUTO_INCREMENT PRIMARY KEY,
    nome_marca
    ano_lancamento year,
    modelo text(500),
    tipo_combustivel enum ('gasolina','etanol','diesel') desault 'etanol' not null,
    data_cadastro TIMESTAMP default CURRENT_TIMESTAMP
);

create table if not exists modelos (
    id_modelo int AUTO_INCREMENT PRIMARY KEY,
    nome_modelo varchar(30) not null,
    tipo_modelo enum('suv', 'compacto', 'sedan') default 'compacto',
    ano_fabricacao year not null,
    potencia char(10),
    status_modelo enum ('ativo','inativo') DEFAULT 'ativo',
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create TABLE if not exists funcionarios (
    id_funcionario int AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario varchar(60) not null,
    cpf_funcionario char(14) not null unique,
    telefone_funcionario char(15) not null,
    cargo varchar(30),
    salario decimal (10,2) not null,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists servicos (
    id_servico int AUTO_INCREMENT PRIMARY KEY
    tipo_servico VARCHAR(100) not null,
    valor decimal (10,2) not null,
    data_inicio datetime not null,
    data_termino datetime not null,
    descricao_servico text(500) not null,
    status_servicos enum('em andamento','em espera',
    'concluido') default 'em andamento' not null,
     data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table if not exists fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    telefone (15) not null,
    --tempo_entrega varchar(30)
    cnpj char (18) not null unique,
    razao_social varchar (100) not null,
    segmento_area varchar(50) not null,
    endereco VARCHAR (100) not null,
    email VARCHAR(100) not null,
    status_fornecedor enum ('ativo', 'inativo',) default 'ativo',
    data_cadastro timestamp defalut CURRENT_TIMESTAMP
);