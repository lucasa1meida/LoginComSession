create database bdlogingit;
use bdlogingit;

create table login(id int primary key auto_increment, email varchar(250) unique, senha varchar(50));

insert into login values(null, "lucas@gmail.com","123");
insert into login values(null, "edson@gmail.com","123");
insert into login values(null, "seba@gmail.com","123");