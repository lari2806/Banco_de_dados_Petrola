CREATE TABLE funcionarios (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(100) NOT NULL,
  salario float NOT NULL,
  data_entrada date NOT NULL,
  PRIMARY KEY (id)
);


INSERT INTO funcionarios VALUES
(1,'Francisco Silva',2500,'2010-05-15'),
(2,'Francisco Oliveira',2700,'2015-08-10'),
(3,'Francisco Santos',3000,'2018-03-01'),
(4,'Ana Maria',2200,'2005-12-20'),
(5,'João Pedro',2400,'2012-11-11'),
(6,'Maria Clara',2600,'2008-07-05'),
(7,'Carlos Eduardo',2800,'2021-12-01'),
(8,'Fernanda Costa',3100,'2016-04-14'),
(9,'Rafael Pereira',2900,'2003-09-30'),
(10,'Juliana Rodrigues',3200,'1998-02-28'),
(11,'Francisco Almeida',2600,'2007-06-15'),
(12,'Francisco Cardoso',2800,'2014-10-22'),
(13,'Patrícia Souza',2300,'2011-02-19'),
(14,'Roberto Lima',3100,'2009-09-05'),
(15,'Camila Duarte',2400,'2018-07-30');

--

--

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos (
  id int(11) NOT NULL AUTO_INCREMENT,
  nome varchar(50) NOT NULL,
  preco float NOT NULL,
  PRIMARY KEY (id)
);




INSERT INTO produtos VALUES
(1,'Arroz',5.99),
(2,'Feijão',7.49),
(3,'Leite',3.99),
(4,'Detergente',1.99),
(5,'Sabonete',2.49),
(6,'Tomate',4.29),
(7,'Pão de forma',8.99),
(8,'Refrigerante',6.49),
(9,'Óleo de soja',9.99),
(10,'Café',14.49),
(11,'Açúcar',3.49),
(12,'Farinha de trigo',4.99),
(13,'Manteiga',12.89),
(14,'Presunto',5.49),
(15,'Queijo',6.99),
(16,'Macarrão',2.89),
(17,'Biscoito recheado',3.79),
(18,'Água mineral',2.19),
(19,'Cerveja',4.49),
(20,'Suco de laranja',6.99),
(21,'Banana',3.29),
(22,'Maçã',4.99),
(23,'Cenoura',2.59),
(24,'Alface',1.99),
(25,'Frango congelado',15.99),
(26,'Carne moída',19.49),
(27,'Peixe',24.99),
(28,'Batata',2.99),
(29,'Cebola',3.49),
(30,'Alvejante',6.99),
(31,'Sabão em pó',12.49),
(32,'Papel higiênico',7.99),
(33,'Escova de dentes',4.49),
(34,'Shampoo',9.99),
(35,'Condicionador',10.49),
(36,'Esponja de aço',1.29),
(37,'Velas',2.49),
(38,'Isqueiro',3.99);



CREATE TABLE vendas (
  id int(11) NOT NULL AUTO_INCREMENT,
  produto_id int(11) NOT NULL,
  numero_vendas int(11) NOT NULL,
  data_vendas date NOT NULL,
  PRIMARY KEY (id),
  KEY produto_id (produto_id),
  CONSTRAINT vendas_ibfk_1 FOREIGN KEY (produto_id) REFERENCES produtos (id)
);

--

--


INSERT INTO vendas VALUES
(1,1,15,'2024-01-10'),
(2,2,20,'2024-01-15'),
(3,3,8,'2024-01-20'),
(4,4,5,'2024-01-25'),
(5,5,12,'2024-02-01'),
(6,6,18,'2024-02-05'),
(7,7,10,'2024-02-10'),
(8,8,6,'2024-02-15'),
(9,9,22,'2024-02-20'),
(10,10,30,'2024-02-25'),
(11,11,25,'2024-03-01'),
(12,12,28,'2024-03-05'),
(13,13,10,'2024-03-10'),
(14,14,14,'2024-03-15'),
(15,15,7,'2024-03-20'),
(16,16,3,'2024-03-25'),
(17,17,21,'2024-04-01'),
(18,18,9,'2024-04-05'),
(19,19,4,'2024-04-10'),
(20,20,13,'2024-04-15'),
(21,21,17,>'2024-04-20'),
(22,22,11,'2024-04-25'),
(23,23,19,'2024-05-01'),
(24,24,24,'2024-05-05'),
(25,25,27,'2024-05-10'),
(26,26,16,'2024-05-15'),
(27,27,12,'2024-05-20');