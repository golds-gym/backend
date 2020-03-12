-- create database gold-s-gym;

create table if not exists trainer (
    id serial primary key,
    firstname varchar(50),
    lastname varchar(50),
    email varchar(355)
);

create table if not exists trainee (
   id serial primary key,
   firstname varchar (50) not null,
   lastname varchar (50),
   email varchar (355),
   last_login timestamp,
   trainer integer references trainer(id)
);
