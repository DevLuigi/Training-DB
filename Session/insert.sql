/*  Tabela tb_categoria     */

insert into tb_categoria (nm_categoria)
     values ("Salgados");

insert into tb_categoria (nm_categoria)
     values ("Doces");

insert into tb_categoria (nm_categoria)
     values ("Carne");
     
insert into tb_categoria (nm_categoria)
     values ("Bebidas"); 
     
  /*  Tabela tb_produto     */      
     
insert into tb_produto(id_categoria, nm_produto, vl_preco)
     values (1, "Coxinha", 2.50),
            (1, "Esfirra", 5.00),
            (1, "Kibe", 2.00),
            (1, "Bolinho de Queijo", 3.00),
            (1, "Salsichão", 3.50),
            (2, "Bala Fini", 0.50),
            (2, "Chiclete bubbaloo", 1.00),
            (2, "Bolacha Trakinas", 2.50),
            (2, "Dadinho", 0.50),
            (2, "Chocolate Lacta", 3.50),
            (3, "Picanha", 39.00),
            (3, "Costela", 40.00),
            (3, "Coxa de Frango", 20.00),
            (3, "Figado", 25.00),
            (3, "Pernil", 30.00),
            (4, "jack Daniels", 150.00),
            (4, "Coca Cola", 10.00),
            (4, "Corote", 1.50),
            (4, "Heineken", 5.00),
            (4, "Brahma", 3.00);
            
 /*  Tabela tb_estoque     */ 
     
 insert into tb_estoque(id_produto, qtd_minima, qtd_disponivel)
     values (1, 200, 500), 
            (2, 150, 350),
            (3, 100, 300),
            (4, 150, 300),
            (5, 100, 300),
            (6, 150, 350),
            (7, 100, 250),
            (8, 300, 600),
            (9, 200, 450),
            (10, 350, 650),
            (11, 200, 350),
            (12, 150, 300),
            (13, 200, 400),
            (14, 150, 300),
            (15, 300, 550),
            (16, 200, 350),
            (17, 600, 900),
            (18, 450, 700),
            (19, 350, 500),
            (20, 600, 700);
            
/*  Tabela tb_endereço     */             

insert into tb_endereco(ds_cep, ds_endereco, nr_endereco, ds_cidade)
     values ("12345-000", "Rua Domingos Tarroso", "398", "São Paulo - SP"),
            ("62345-555", "AV. Nitra", "38", "São Paulo - SP"),         
            ("62345-111", "Rua Maracuja", "22", "São Paulo - SP"),     
            ("22345-222", "AV. Paulista", "01", "São Paulo - SP"),
            ("22345-435", "Rua João Pessoa", "25", "São Paulo - SP"),
            ("52345-654", "Rua Brooklyn", "77", "São Paulo - SP"),
            ("02345-867", "Rua Nova York", "857", "São Paulo - SP"),
            ("92345-879", "AV. Interlagos", "23", "São Paulo - SP"),
            ("12345-578", "AV. Luquetine", "36", "São Paulo - SP"),
            ("12587-005", "Rua Vila Maria", "59", "São Paulo - SP"),
            ("56345-589", "AV. Capão Redondo", "92", "São Paulo - SP"),
            ("12675-760", "AV. Borges", "71", "São Paulo - SP"),
            ("82875-087", "AV. Marginal", "87", "São Paulo - SP"),
            ("12356-870", "Rua Evaristo Costa", "62", "São Paulo - SP"),
            ("72345-089", "AV. Sabara", "49", "São Paulo - SP"),
            ("34345-560", "Rua Largo treze", "11", "São Paulo - SP"),
            ("22375-060", "AV. Pinheiros", "76", "São Paulo - SP"),
            ("42533-340", "Rua Barauna", "67", "São Paulo - SP"),
            ("42333-330", "AV. Brigadeiro", "53", "São Paulo - SP"),
            ("72365-040", "Rua José Queiroz", "55", "São Paulo - SP"),
            ("62335-430", "Rua Nilto Santos", "99", "São Paulo - SP"),
            ("123435-420", "AV. Kennedy", "678", "São Paulo - SP"),
            ("42323-430", "AV. Quatro de Março", "234", "São Paulo - SP"),
            ("25445-054", "Rua Carlo Ayres", "140", "São Paulo - SP"),
            ("54345-054", "Rua Roswell", "798", "São Paulo - SP");
            
/*  Tabela tb_cliente  */ 

 insert into tb_cliente(nm_cliente, ds_cpf, id_endereco)
     values ("Kaio da Silva Coelho", "561234256/78", 1 ),
            ("Luigi da Silva Coelho", "908234256/29", 2 ),
            ("Forrest gump", "512367786/37", 3 ),
            ("Zeca Pagodinho", "232395475/34", 4 ),
            ("Hudson Hornet", "561234256/03", 5 ),
            ("Travis Scott", "289347295/59", 6 ),
            ("Thomas A. Anderson", "968854563/52", 7 ),
            ("Morpheus Matrix", "714056623/18", 8 ),
            ("Dona Nastacia", "738658364/04", 9 ),
            ("Edson Jorel", "347329857/59", 10 ),
            ("Hamilton de Souza", "576893756/23", 11 ),
            ("Geno Lopez", "412647305/44", 12 ),
            ("Gino da Silva Lima", "785532708/64", 13 ),
            ("Guina de Souza ferreira", "324063455/66", 14 ),
            ("Bruna Oliveira", "870978977/76", 15 ),
            ("Alvin Suares", "907435243/87", 16 ),
            ("Carlos Bitencur", "234902573/89", 17 ),
            ("Samuel Lima", "329482579/78", 18 ),
            ("Luan de Souza Sampaio", "942806450/92", 19 ),
            ("Maria da Silva", "210983357/38", 20 ),
            ("João Carlos da Silva", "783495242/84", 21 ),
            ("Paulo rodrigues", "856034545/20", 22 ),
            ("Kauan de souza", "234098454/23", 23 ),
            ("Lucas Tavares", "543809785/24", 24 ),
            ("Mateus Correia", "384759054/65", 25 );
            
/*  Tabela tb_venda  */ 

 insert into tb_venda(id_cliente, ds_nota_fiscal, tp_forma_pagamento, qtd_parcelas, dt_venda, id_endereco_entrega)
     values (1, "NF20210805123024", "Cartão de Crédito", 2, '2021-08-01-15-42', 1),
            (1, "NF20210724162043", "Cartão de débito", 1, '2021-10-21-19-33', 1),
            (2, "NF20213232234455", "Boleto", 3, '2021-01-01-22-10', 2),
            (2, "NF202110071035154", "Cartão de débito", 1, '2021-01-01-09-00', 2),
            (3, "NF202110923232352", "Dinheiro", 1, '2021-04-26-16-21', 3),
            (3, "NF202104235263472", "Boleto", 3, '2021-08-31-07-30', 3),
            (4, "NF202106235614382", "Dinheiro", 1, '2021-12-31-17-40', 4),
            (4, "NF202112313483473", "Dinheiro", 1, '2021-01-01-12-30', 4),
            (5, "NF202111231283614", "Cartão de débito", 1, '2021-06-01-08-00', 5),
            (5, "NF202112312312327", "Cartão de débito", 1, '2021-01-21-15-33', 5),
            (6, "NF202110012312312", "Cartão de Crédito", 5, '2021-01-01-12-43', 6),
            (6, "NF202156757586894", "Boleto", 6, '2021-07-17-12-00', 6),
            (7, "NF202134556678766", "Cartão de Crédito", 8, '2021-04-01-10-22', 7),
            (7, "NF202136457586966", "Cartão de Crédito", 12, '2021-01-01-12-30', 7),
            (8, "NF202123535646578", "Dinheiro", 1, '2021-09-09-09-09', 8),
            (8, "NF202112354758740", "Cartão de débito", 1, '2021-03-30-20-30', 8),
            (9, "NF202198087967573", "Dinheiro", 1, '2021-05-05-09-30', 9),
            (9, "NF202123498085631", "Dinheiro", 1, '2021-02-03-16-00', 9),
            (10, "NF20212554768941", "Cartão de débito", 1, '2021-11-01-12-00', 10),
            (10, "NF20211232547692", "Boleto", 7, '2021-08-27-15-55', 10),
            (11, "NF20213645786242", "Cartão de débito", 1, '2021-01-01-12-02', 11),
            (11, "NF20213957579754", "Cartão de débito", 1, '2021-01-17-18-00', 11),
            (12, "NF20212355976776", "Dinheiro", 1, '2021-09-02-07-10', 12),
            (12, "NF20218763353548", "Boleto", 9, '2021-12-03-08-00', 12),
            (13, "NF20211342354570", "Cartão de débito", 1, '2021-01-01-13-10', 13),
            (13, "NF20211342454750", "Dinheiro", 1, '2021-03-25-22-30', 13),
            (14, "NF20219087546340", "Cartão de Crédito", 10, '2021-11-24-16-00', 14),
            (14, "NF20211243475879", "Cartão de Crédito", 2, '2021-01-01-18-00', 14),
            (15, "NF20219755533571", "Boleto", 3, '2021-02-21-20-40', 15),
            (15, "NF20211235547571", "Cartão de Crédito", 9, '2021-01-21-13-23', 15),
            (16, "NF20211233425342", "Dinheiro", 1, '2021-09-21-14-30', 16),
            (16, "NF20219986546744", "Cartão de Crédito", 5, '2021-11-10-12-00', 16),
            (17, "NF20219745363455", "Dinheiro", 1, '2021-12-25-15-00', 17),
            (17, "NF20211424538485", "Dinheiro", 1, '2021-05-05-08-00', 17),
            (18, "NF20211423576345", "Cartão de débito", 1, '2021-01-01-07-30', 18),
            (18, "NF20218453746587", "Cartão de Crédito", 2, '2021-02-05-13-10', 18),
            (19, "NF20212187391343", "Cartão de débito", 1, '2021-07-31-17-00', 19),
            (19, "NF20211237426497", "Dinheiro", 1, '2021-07-04-12-10', 19),
            (20, "NF20211238737562", "Dinheiro", 1, '2021-09-04-11-10', 20),
            (20, "NF20211423648558", "Boleto", 1, '2021-11-11-11-11', 20),
            (21, "NF20211243245559", "Cartão de Crédito", 2, '2021-01-01-12-01', 21),
            (21, "NF20211234237991", "Dinheiro", 1, '2021-10-15-18-45', 21),
            (22, "NF20211237634793", "Cartão de Crédito", 6, '2021-07-01-12-00', 22),
            (22, "NF20211483205784", "Boleto", 8, '2021-03-01-10-23', 22),
            (23, "NF20211249328954", "Dinheiro", 1, '2021-01-01-12-07', 23),
            (23, "NF20211143425344", "Cartão de Crédito", 2, '2021-10-01-16-00', 23),
            (24, "NF20211007103525", "Dinheiro", 1, '2021-09-11-12-00', 24),
            (24, "NF20211007225345", "Cartão de Crédito", 2, '2021-01-11-06-30', 24),
            (25, "NF20210002103515", "Dinheiro", 1, '2021-11-15-08-00', 25),
            (25, "NF20210918153042", "Boleto", 2, '2021-12-01-19-20', 25);
            
            
/*  Tabela tb_venda_item  */  


insert into tb_venda_item(id_venda, id_produto)
     values (1, 11), (2, 16), (3, 17), (4, 13), (5, 10), (6, 2), (7, 3), (8, 19), (9, 6), (10, 5),
            (11, 20), (12, 15), (13, 14), (14, 7), (15, 8), (16, 9), (17, 12), (18, 18), (19, 4), (20, 1),
            (21, 16), (22, 20), (23, 19), (24, 18), (25, 17), (26, 16), (27, 15), (28, 14), (29, 13),
            (30, 12), (31, 11), (32, 10), (33, 9), (34, 8), (35, 7), (36, 6), (37, 5), (38, 4),
            (39, 3), (40, 2), (41, 1), (42, 16), (43, 18), (44, 11), (45, 12), (46, 2), (47, 1),
            (48, 9), (49, 19), (50, 14);