use db_comercio;

use db_venda;

insert into cliente
values(1,'Hilson Silva','123156651'),
(2,'Ana Maria','123156655'),
(3,'Paula Sousa','5553156651'),
(4,'Francisco Santos','456516516'),
(5,'Raimundo Silva','456510055');
select *  from cliente;
commit;

 
insert into produto
values (1,'Teclado 102 teclas', 10, sysdate()),
      (2,'Mouse Optico', 10, sysdate()),
      (3,'HD SSD 250Gb', 10, sysdate()),
      (4,'Caixa de Som Dual', 11, sysdate()),
      (5,'Mini Teclado 102 Tc Sem fio', 11, sysdate()),
      (6,'CPU Dell Core i7', 10, sysdate()),
      (7,'Monitor LCD 21 Polegada Sansung', 10, sysdate()),
      (8,'Notebook Asus 15.6 P Core i10', 11, sysdate()),
      (9,'Tablet 8 Polegada Sansung ', 11, sysdate()),
      (10,'Projetor Magic ', 10, sysdate());
select * from produto;
select * from formapag;

insert into formapag
values(1,'Dinheiro','DIN'), 
      (2, 'PIX', 'PIX'),
      (3, 'Cartão de Crédito', 'CC'),
      (4, 'Boleto', 'BOL');
   commit;   
 use db_vendas;  
 select * from  pedido; 
 use db_vendas;
 commit;
 insert into pedido
 values(1, sysdate(), 1, 2, 3, 80.50, 2),
       (2, '2024-05-01',2,1,5,56,3),
       (3,sysdate(), 3,8,1,3500,4),
       (4,'2024-04-30', 4, 10,1,1500,3),
       (5, sysdate(), 5, 7, 2, 1300, 1),
       (6, '2024-03-15', 4, 9, 1, 1600, 3),
       (7, sysdate(), 1, 5, 1, 150, 2),
       (8, '2024-05-02', 3, 3,2, 500, 3 ),
       (9, '2024-02-10', 5, 6, 1, 1750, 4),
       (10, sysdate(), 2, 8, 1, 3500, 3);

select * from pedido;       
select * from fluxo_caixa;       
insert into fluxo_caixa
values(1,sysdate(), 1,241.5, sysdate(), 'N'),
      (2,'2024-05-01',2, 280,'2024-05-01', 'S'),
      (3, sysdate(), 3, 3500, sysdate(), 'N'),
      (4,'2024-04-30', 4 , 1500, '2024-04-30', 'S'),
      (5,sysdate(), 5, 2600, sysdate(), 'N'),
      (6, '2024-03-15', 6,1600, '2024-03-15', 'S'),
      (7, sysdate(), 7, 150, sysdate(), 'N'),
      (8, '2024-05-02',8, 1000,'2024-05-02', 'S'),
      (9, '2024-02-10', 9, 1750, '2024-02-10', 'S'),
      (10,sysdate(), 10, 3500, sysdate(), 'N' );
      
      
      
