CREATE DATABASE IF NOT EXISTS valdir_sales_marcenaria;
default character set utf8mb4; collate utf8mb4_unicode_ci;
use valdir_sales_marcenaria;

create table categoria (
id_categoria int auto_increment primary key,
nome_categoria varchar(60) not null unique
);

create table projeto (
id_projeto int auto_increment primary key,
id_categoria int not null,
titulo varchar(100) not null,
descricao text not null,
imagem_url varchar(255) not null,
data_publicacao datetime not null,
constraint fk_projeto_categoria foreign key (id_categoria) references categoria(id_categoria
on delete restrict on update cascade
);


create table solicitação_orçamento (
id_solicitacao int auto_increment primary key,
nome_cliente varchar(250) not null,
email_cliente varchar(250) not null,
telefone_cliente varchar(20) not null,
data_solicitacao datetime default current_timestamp,
descricao_solicitacao text not null,
);


create table administrador (
id_admin int auto_increment primary key,
nome_admin varchar(250) not null,
email_admin varchar(250) not null,
senha_admi varchar(250) not null
);