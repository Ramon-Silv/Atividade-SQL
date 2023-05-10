create database db_livraria;
use db_livraria;

create table tb_livro(
	pk_IdLivro int NOT NULL auto_increment PRIMARY KEY,
    Autor varchar(100),
    Titulo varchar(100),
    Preco decimal(6,2),/*espaço menor de memória que float e double*/
    Genero varchar(15),
    Classificacao varchar(20),
    Tipo varchar (20),
    Capa varchar (5),
    Editora varchar (15),
    Idioma varchar (15),
	Estoque int,
    QuantidadeVendida int,
    fk_IdFornecedor int,
    fk_IdCliente int
);

create table tb_cliente(
	pk_IdCliente int NOT NULL auto_increment PRIMARY KEY,
	Nome varchar(100),
    Email varchar(50),
    TelefoneCliente varchar(14),
    Endereco varchar(100),
    Cpf varchar(14),
    Cep varchar(9),
    DataNascimento date,
    Cidade varchar(40),
    Estado varchar(30),
    Pais varchar(30),
    fk_IdLivro int
);

create table tb_fornecedor(
	pk_IdFornecedor int NOT NULL auto_increment PRIMARY KEY,
    Nome varchar(100),
    Email varchar(50),
    TelefoneFornecedor varchar(14),
    Cnpj varchar(18),
    Produto varchar(30),
    Endereco varchar(100),
    Cidade varchar(40),
    Estado varchar(30),
    Pais varchar(30),
    Cep varchar(9)
);

create table tb_vendedor(
	pk_IdVendedor int NOT NULL auto_increment PRIMARY KEY,
    Nome varchar(100),
    Email varchar(50),
    TelefoneFornecedor varchar(14),
    Unidade varchar(20),
    Cpf varchar(14),
    DataNascimento date,
    Endereco varchar(100),
    Salario decimal(6,2),
    DataAdmissao date,
    Cargo varchar(20),
    CargaHoraria char(3)
);

create table tb_produto(
	pk_IdProduto int NOT NULL auto_increment PRIMARY KEY,
    Descricao varchar(100),
    Preco decimal(6,2),
    TipoProduto varchar(10),
    Imposto decimal(6,2),
    fk_IdFornecedor int
);