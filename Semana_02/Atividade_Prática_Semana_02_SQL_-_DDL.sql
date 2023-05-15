create database music_dossiers;

use music_dossiers;

-- Criar tabelas

create table artistas (
    id int not null auto_increment primary key,
    nome varchar(50) not null unique
);

create table generos (
    id int not null auto_increment primary key,
    genero varchar(50) not null unique
);

create table estilos (
    id int not null auto_increment primary key,
    estilo varchar(50) not null unique
);

create table paises (
    id int not null auto_increment primary key,
    nome_pais varchar(30) not null unique
);

create table formatos (
    id int not null auto_increment primary key,
    formato varchar(20) not null
);

create table musicas (
    id int not null auto_increment primary key,
    album_id int not null,
    nome_musica varchar(50) not null unique,
    ano_lancamento char(4) not null,
    foreign key (album_id) references albuns(id)
);

create table albuns (
    id int not null auto_increment primary key,
    artista_id int not null,
    genero_id int not null,
    estilo_id int,
    pais_id int not null,
    formato_id int,
    nome_album varchar(50) not null,
    ano_lancamento char(4) not null,
    foreign key (artista_id) references artistas (id),
    foreign key (genero_id) references generos (id),
    foreign key (estilo_id) references estilos (id),
    foreign key (pais_id) references paises (id),
    foreign key (formato_id) references formatos (id)
);

create table capas (
    album_id int not null primary key,
    foreign key (album_id) references albuns(id),
    artista_capa varchar(50) not null unique
);