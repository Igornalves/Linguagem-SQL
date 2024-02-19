-- Database: sistema_de_vendas
 -- DROP DATABASE IF EXISTS sistema_de_vendas;

CREATE DATABASE 
SISTEMA_DE_VENDAS WITH OWNER = IGORN 
ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' 
LC_CTYPE = 'Portuguese_Brazil.1252' 
LOCALE_PROVIDER = 'libc' TABLESPACE = PG_DEFAULT 
CONNECTION LIMIT = -1 IS_TEMPLATE = FALSE;

GRANT TEMPORARY,CONNECT ON DATABASE SISTEMA_DE_VENDAS TO PUBLIC;

GRANT ALL ON DATABASE SISTEMA_DE_VENDAS TO IGORN WITH GRANT OPTION;

GRANT CONNECT ON DATABASE SISTEMA_DE_VENDAS TO POSTGRES;


CREATE TABLE VENDEDOR(
	ID_VENDEDOR SERIAL PRIMARY KEY,
	NOME_VENDEDOR VARCHAR(50) NOT NULL,
	DATA_DE_NASCIMENTO Date NOT NULL,
	ENDERECO VARCHAR(100) NOT NULL,
	NUMERO_DE_REGISTRO integer NOT NULL,
	DATA_DE_ADMISSAO Date NOT NULL
);

CREATE TABLE CLIENTES(
	ID_CLIENTES SERIAL PRIMARY KEY,
	NOME_CLIENTE VARCHAR(50) NOT NULL,
	DATA_DE_NASCIMENTO date NOT NULL,
	ENDERECO VARCHAR(100) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	TELEFONE VARCHAR(20) NOT NULL
);

CREATE TABLE PRODUTOS(
	ID_PRODUTOS Serial PRIMARY KEY,
	NOME_PRODUTO VARCHAR(50) NOT NULL,
	CATEGORIA VARCHAR(50) NOT NULL,
	DESCRICAO VARCHAR(200) NOT NULL,
	AVALIACAO_DE_QUALIDADE INTEGER NOT NULL,
	PRECO MONEY NOT NULL
);

CREATE TABLE VENDAS (
	ID_VENDAS SERIAL PRIMARY KEY,
	VENDEDOR INTEGER REFERENCES VENDEDOR(ID_VENDEDOR),
	CLIENTE INTEGER REFERENCES CLIENTES(ID_CLIENTES),
	PRODUTO INTEGER REFERENCES PRODUTOS(ID_PRODUTOS),
	QUANTIDADE_VENDIDA INTEGER
);

INSERT INTO clientes (
	nome_cliente,data_de_nascimento,endereco,cidade,email,telefone
) VALUES (
	'fernando',
	'10/04/2000',
	'rua 10, quadra j, casa 15, conjunto vale quem tem',
	'teresina',
	'fernando05santos@gmail.com',
	'(86)99425-2345'
);

INSERT INTO clientes (
	nome_cliente,data_de_nascimento,endereco,cidade,email,telefone
) VALUES (
	'Carla Veila',
	'24/12/2004',
	'rua 14, quadra r, casa 03, condominio bem viver',
	'fortaleza',
	'carlav90121@gmail.com',
	'(86)99543-1225'
);

INSERT INTO clientes (
	nome_cliente,data_de_nascimento,endereco,cidade,email,telefone
) VALUES (
	'Gustavo',
	'15/06/1994',
	'rua das flores, quadra f, casa 08, condominio relax',
	'luiz correia',
	'gustavodamasco977@gmail.com',
	'(86)99412-8906'
);

INSERT INTO clientes (
	nome_cliente,data_de_nascimento,endereco,cidade,email,telefone
) VALUES (
	'Ivone',
	'23/03/1991',
	'rua babel, quadra r, casa 10, condominio jasmin',
	'parnaiba',
	'ivonealves735@gmail.com',
	'(86)99418-7645'
);

INSERT INTO produtos (
	nome_produto,categoria,descricao,avaliacao_de_qualidade,preco
)
VALUES (
	'notebook Dell',
	'Desktop',
	'computador intel 3, com 8 gb de memoria ram, sdd de 288 gb de armazenamento, monitor oLed full hd',
	250,
	'2.500,00'
);

INSERT INTO produtos (
	nome_produto,categoria,descricao,avaliacao_de_qualidade,preco
)
VALUES (
	'caixa de som JBL',
	'Desktop',
	'com Bluetooth, Xtreme-3 , cor preta',
	120,
	'1.216,00'
);


INSERT INTO produtos (
	nome_produto,categoria,descricao,avaliacao_de_qualidade,preco
)
VALUES (
	'Gabinete gamer mancer',
	'Pc Gamer de mesa',
	'com RGB, cor preta, lateral de vidro, ',
	389,
	'119,99'
);

INSERT INTO produtos (
	nome_produto,categoria,descricao,avaliacao_de_qualidade,preco
)
VALUES (
	'caixa de som JBL',
	'Som portatil',
	'com Bluetooth, Xtreme-3 , cor preta',
	120,
	'1.216,00'
);

INSERT INTO produtos (
	nome_produto,categoria,descricao,avaliacao_de_qualidade,preco
)
VALUES (
	'microfone HyperX',
	'microfone de mesa',
	'de cabo,QuadCast , cor preta com vermelha,',
	120,
	'699,98'
);

INSERT INTO vendedor (
	nome_vendedor,data_de_nascimento,endereco,numero_de_registro,data_de_admissao
)
VALUES (
	'Daniel Siqueira','20/08/1998','rua da ypes, casa 23, apartamento 03, predio GDM',0002,'12/05/2015'
);

INSERT INTO vendedor (
	nome_vendedor,data_de_nascimento,endereco,numero_de_registro,data_de_admissao
)
VALUES (
	'Vitor Emanuel','16/03/2004','rua 10, bairro vila maria, casa 08',0028,'21/04/2022'
);

INSERT INTO vendedor (
	nome_vendedor,data_de_nascimento,endereco,numero_de_registro,data_de_admissao
)
VALUES (
	'gaby tamares','24/12/2003','rua da flores, bairro camelo, casa 23',0035,'12/08/2021'
);

INSERT INTO vendedor (
	nome_vendedor,data_de_nascimento,endereco,numero_de_registro,data_de_admissao
)
VALUES (
	'yasmin gomes','15/03/2001','rua das pedras, bairro vila dos morros, casa 13',0029,'17/06/2020'
);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(1,3,3,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(1,3,4,2);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(3,2,1,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(3,1,1,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(3,2,3,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(2,2,3,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(2,3,1,1);

INSERT INTO vendas (vendedor,cliente,produto,quantidade_vendida)
VALUES(4,4,5,2);

select * from clientes;
select * from produtos;
select * from vendedor;

select * from vendas;

SELECT * from vendas
WHERE vendedor = 3;

update vendedor set nome_vendedor = 'Ivan Ribeiro'
WHERE id_vendedor = 4;

DELETE FROM produtos
WHERE id_produtos = 2;
