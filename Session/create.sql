create table tb_categoria (
	id_categoria		int PRIMARY KEY AUTO_INCREMENT,
	nm_categoria		varchar(255)
);

CREATE table tb_produto (
	id_produto 			int primary key AUTO_INCREMENT,
	id_categoria		int,
  	nm_produto			varchar(255),
	vl_preco			decimal(15,2),
  	FOREIGN KEY (id_categoria) REFERENCES tb_categoria (id_categoria) on DELETE CASCADE
);

CREATE TABLE tb_estoque (
	id_estoque			int PRIMARY key AUTO_INCREMENT,
	id_produto			int,
  	qtd_minima			int,
	qtd_disponivel		int,
  	FOREIGN KEY (id_produto) REFERENCES tb_produto (id_produto) on delete cascade
);

create table tb_endereco (
	id_endereco			int primary key AUTO_INCREMENT,
	ds_cep				varchar(255),
  	ds_endereco			varchar(255),
  	nr_endereco			varchar(255),
	ds_cidade			varchar(255)  
);

create table tb_cliente (
	id_cliente 			int primary key AUTO_INCREMENT,
  	nm_cliente			varchar(255),
	ds_cpf				varchar(255),
	id_endereco			int,
  	FOREIGN key (id_endereco) REFERENCES tb_endereco (id_endereco)
);

CREATE table tb_venda (
	id_venda			int primary key AUTO_INCREMENT,
	id_cliente			INT,  
	ds_nota_fiscal		varchar(255),
	tp_forma_pagamento	varchar(255),
	qtd_parcelas		int,
  	dt_venda			datetime,
  	id_endereco_entrega	INT,
  	FOREIGN KEY (id_cliente) REFERENCES tb_cliente (id_cliente),
	FOREIGN key (id_endereco_entrega) REFERENCES tb_endereco (id_endereco) 
);

create table tb_venda_item (
	id_venda_item		int primary key AUTO_INCREMENT,
	id_venda			int,
	id_produto			int,
	FOREIGN key (id_venda) REFERENCES tb_venda (id_venda),
  	FOREIGN key (id_produto) REFERENCES tb_produto (id_produto)
);