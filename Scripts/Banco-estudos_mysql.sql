create table pessoas (
	id int auto_increment primary key,
	nome varchar(30),
	nascimento date,
	sexo enum('masculino', 'feminino'),
	peso decimal(5,2),
	altura decimal(3,2),
	nacionalidade varchar(20) default 'brasil'
)default charset = UTF8;