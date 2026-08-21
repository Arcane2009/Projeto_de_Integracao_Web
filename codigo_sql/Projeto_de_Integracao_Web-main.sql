create database mappet;
use mappet;

create table if not exists animal1(
ANIMAL_ID varchar(5) not null primary key,
NOME varchar(50) not null,
RACA varchar(20) not null,
IDADE int not null,
LOCAL varchar(50) not null
);
/*framwork é mais técnico, menos liberdade*/
select * from cliente1