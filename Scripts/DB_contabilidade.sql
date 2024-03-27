/Passo I/
create table EMPRESA(
  IDEMP INT primary key,
  EMPRESA VARCHAR(80),
  DATCAD DATE
);

insert into empresa 
values(1,'Contabilidade Certa Ltda', '2024-03-20');

select * from empresa;

/Passo II/
create table filial(
  idfil int primary key,
  idemp int,
  filial varchar(80),
  constraint fk_empresa foreign key (idemp) references empresa (idemp)
);

insert into  filial
values(1,1,'Caxias'),(2,1,'Codó'),(3,1,'Timon'),(4,1,'Teresina');

select * from filial;

/Passo III/
create table cargo(
  idcar int primary key,
  cargo varchar(80)
);

insert into cargo 
values(1,'Gerente administrativo'),(2,'Gerente Financeiro'),(3,'Gerente'),(4,'Vendedor'),
      (5,'Segurança'),(6,'Professor'),(7,'Coordenador'),(8,'Supervisor de Almoxarifado'),
      (9, 'Supervisor de Markting'),(10,'Caixa');
      
select * from cargo;

