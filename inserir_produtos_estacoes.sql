-- =====================================================================
-- POPULAÇÃO COMPLETA DO BANCO DE DADOS
-- EMPRESA: Comercial Alfa Calçados
-- PROJETO: Gestão de produtos, fornecedores e pedidos
-- BANCO: mysql
-- =====================================================================

-- 1. CRIACAO E USO DO BANCO DE DADOS
CREATE DATABASE IF NOT EXISTS comercial_calcados_db CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE comercial_calcados_db;

-- =====================================================================
-- 2. POPULAÇÃO
-- =====================================================================

-- FORNECEDORES
INSERT INTO fornecedor (id, nome, cnpj, cidade) VALUES
(1, 'Calçados Beira Rio S.A.', '88.563.062/0001-35', 'Novo Hamburgo'),
(2, 'Grendene S.A.', '89.850.341/0001-60', 'Farroupilha'),
(3, 'Alpargatas S.A.', '61.079.117/0001-05', 'São Paulo'),
(4, 'Dakota S.A.', '94.232.097/0001-39', 'Nova Petrópolis'),
(5, 'VULCABRAS S.A.', '50.725.071/0001-00', 'Jundiaí'),
(6, 'Arezzo Indústria e Comércio S.A.', '07.666.909/0001-03', 'Belo Horizonte'),
(7, 'Paquetá Calçados Ltda', '02.261.985/0001-04', 'Sapiranga'),
(8, 'Nike do Brasil Com. e Part. Ltda', '59.546.515/0001-34', 'São Paulo'),
(9, 'Adidas do Brasil Ltda', '42.274.696/0001-01', 'Barueri'),
(10, 'PUMA Sports Ltda', '05.405.015/0001-02', 'São Paulo');

-- PRODUTOS (geral + estações)

-- geral / variados
INSERT INTO produto (codigo, nome, categoria, preco, estoque) VALUES
(1001, 'Vizzano Tênis casual Branco', 'Tênis casual', 149.90, 120),
(1002, 'Moleca Tênis casual Lona Preto', 'Tênis casual', 89.90, 250),
(1003, 'Vans Old Skool Classic', 'Tênis casual', 399.90, 80),
(1004, 'All Star Chuck Taylor Branco', 'Tênis casual', 249.90, 150),
(1005, 'Arezzo Tênis ZZ Clyn Couro', 'Tênis casual', 359.90, 60),
(1006, 'Schutz Tênis Couro Plataforma', 'Tênis casual', 420.00, 40),
(2001, 'Nike Revolution 7 (Masc)', 'Tênis esportivo', 399.99, 100),
(2002, 'Adidas Duramo Speed (Fem)', 'Tênis esportivo', 349.99, 90),
(2003, 'Puma Flyer Runner (Masc)', 'Tênis esportivo', 279.90, 110),
(2004, 'Olympikus Corre 3 (Masc)', 'Tênis esportivo', 499.90, 70),
(2005, 'Mizuno Wave Rider 27 (Fem)', 'Tênis esportivo', 799.90, 30),
(3001, 'Havaianas Top Branca', 'Sandálias', 29.90, 1500),
(3002, 'Ipanema Clássica (Fem)', 'Sandálias', 24.90, 800),
(3003, 'Melissa Possession Sandália', 'Sandálias', 119.90, 200),
(3004, 'Beira Rio Sandália Conforto (Fem)', 'Sandálias', 99.90, 180),
(3005, 'Vizzano Sandália Salto Fino', 'Sandálias', 139.90, 60),
(3006, 'Schutz Sandália Tira Vinil', 'Sandálias', 390.00, 25),
(4001, 'Democrata Sapato Social Couro (Masc)', 'Sapato Social', 219.90, 80),
(4002, 'Beira Rio Scarpin Conforto (Fem)', 'Sapato Social', 109.90, 130),
(4003, 'Arezzo Scarpin Couro Salto Bloco', 'Sapato Social', 329.90, 50),
(4004, 'Vizzano Scarpin Bico Fino', 'Sapato Social', 129.90, 90),
(5001, 'Dakota Bota Coturno (Fem)', 'Botas', 299.90, 70),
(5002, 'Arezzo Bota Chelsea Couro (Fem)', 'Botas', 499.90, 30),
(5003, 'West Coast Coturno Couro (Masc)', 'Botas', 279.90, 60),
(5004, 'Vizzano Bota Cano Curto Salto', 'Botas', 199.90, 80);

-- primavera
INSERT INTO produto (codigo, nome, categoria, preco, estoque) VALUES
(9101, 'Tenis Corrida', 'Tênis Esportivo', 129.00, 50),
(9102, 'Tenis Branco', 'Tênis Casual', 129.00, 50),
(9103, 'Tenis Marrom Claro', 'Tênis Casual', 129.00, 50),
(9104, 'Tenis de Corrida Branco', 'Tênis Esportivo', 129.00, 50),
(9105, 'Todas Estrelas Rosa', 'Tênis Casual', 129.00, 50),
(9106, 'Todas Estrelas Rosa Claro', 'Tênis Casual', 129.00, 50),
(9107, 'Todas Estrelas Amerelo', 'Tênis Casual', 129.00, 50),
(9108, 'Todas Estrelas Vermelhão', 'Tênis Casual', 129.00, 50),
(9109, 'Todas Estrelas Preto', 'Tênis Casual', 129.00, 50),
(9110, 'Tenis Verde Musgo', 'Tênis Casual', 129.00, 50),
(9111, 'Todas Estrelas Branco', 'Tênis Casual', 129.00, 50);

-- verão
INSERT INTO produto (codigo, nome, categoria, preco, estoque) VALUES
(9201, 'Chinelo Preto', 'Sandálias', 129.00, 100),
(9202, 'Chinelo Azul', 'Sandálias', 129.00, 100),
(9203, 'Chinelo Marrom', 'Sandálias', 129.00, 100),
(9204, 'Chinelo Azul Escuro', 'Sandálias', 129.00, 100),
(9205, 'Chinelo Borboleta Red Flag', 'Sandálias', 129.00, 100),
(9206, 'Mega Chinelo Verde', 'Sandálias', 129.00, 100),
(9207, 'Chinelo Dourado', 'Sandálias', 129.00, 100),
(9208, 'Chinelo Florido', 'Sandálias', 129.00, 100),
(9209, 'Chinelo Papagaio', 'Sandálias', 129.00, 100),
(9210, 'Ultra Instinct Disciplina Ego', 'Sandálias', 129.00, 50);

-- outono
INSERT INTO produto (codigo, nome, categoria, preco, estoque) VALUES
(9301, 'Todas Estrelas Pronto', 'Tênis Casual', 129.00, 50),
(9302, 'Todas Estrelas Vermelho', 'Tênis Casual', 129.00, 50);

-- inverno
INSERT INTO produto (codigo, nome, categoria, preco, estoque) VALUES
(9401, 'Bota Cowboy', 'Botas', 129.00, 40),
(9402, 'Bota Cowgirl', 'Botas', 129.00, 40),
(9403, 'Cuturno Gótico', 'Botas', 129.00, 40),
(9404, 'Sapatim legal', 'Sapatos', 129.00, 40),
(9405, 'Todos Estrelas Amarelo', 'Tênis Casual', 129.00, 50),
(9406, 'Todas as Estrelas Branco', 'Tênis Casual', 129.00, 50);

-- PEDIDOS (Simulação Anual)

-- ---- Q1 2025 (verão - sandálias, chinelao e casual) ----
INSERT INTO pedido (data, id_produto, quantidade, id_fornecedor) VALUES
('2025-01-05', 3001, 1000, 3),
('2025-01-05', 3002, 500, 2),
('2025-01-06', 1004, 100, 3),
('2025-01-07', 2001, 50, 8),
('2025-01-08', 2002, 50, 9),
('2025-01-10', 1001, 80, 1),
('2025-01-11', 3004, 120, 1),
('2025-01-15', 3003, 70, 2),
('2025-01-20', 1003, 50, 7),
('2025-02-01', 3001, 1500, 3),
('2025-02-02', 3002, 500, 2),
('2025-02-05', 1002, 200, 1),
('2025-02-10', 2004, 30, 5),
('2025-02-15', 2003, 40, 10),
('2025-02-20', 4002, 50, 1),
('2025-03-01', 1001, 50, 1),
('2025-03-05', 3005, 30, 1),
('2025-03-10', 1005, 20, 6),
('2025-03-12', 4001, 30, 7),
('2025-03-15', 3001, 500, 3),
('2025-03-20', 2001, 30, 8);

-- ---- Q2 2025 (outono/inverno - botas e sapatos) ----
INSERT INTO pedido (data, id_produto, quantidade, id_fornecedor) VALUES
('2025-04-01', 5001, 50, 4),
('2025-04-02', 5003, 40, 7),
('2025-04-05', 5004, 60, 1),
('2025-04-07', 4001, 50, 7),
('2025-04-10', 4002, 80, 1),
('2025-04-15', 1002, 150, 1),
('2025-04-20', 5002, 20, 6),
('2025-04-22', 4003, 20, 6),
('2025-05-01', 5001, 50, 4),
('2025-05-05', 1003, 30, 7),
('2025-05-06', 1004, 50, 3),
('2025-05-10', 5003, 40, 7),
('2025-05-15', 4001, 30, 7),
('2025-05-20', 2005, 10, 5),
('2025-05-25', 2004, 30, 5),
('2025-06-01', 5001, 70, 4),
('2025-06-02', 5004, 80, 1),
('2025-06-05', 5002, 25, 6),
('2025-06-10', 4004, 50, 1),
('2025-06-15', 2001, 30, 8),
('2025-06-16', 2002, 30, 9),
('2025-06-20', 1002, 100, 1);

-- ---- Q3 2025 (inverno/primavera - reposição de mercadoria e tals) ----
INSERT INTO pedido (data, id_produto, quantidade, id_fornecedor) VALUES
('2025-07-01', 5001, 30, 4),
('2025-07-05', 5003, 30, 7),
('2025-07-10', 4001, 40, 7),
('2025-07-15', 1001, 80, 1),
('2025-07-20', 2003, 50, 10),
('2025-07-25', 1006, 15, 6),
('2025-08-01', 3003, 50, 2),
('2025-08-05', 4002, 60, 1),
('2025-08-10', 1005, 20, 6),
('2025-08-15', 2001, 40, 8),
('2025-08-16', 2002, 40, 9),
('2025-08-20', 1004, 70, 3),
('2025-09-01', 1001, 100, 1),
('2025-09-02', 1002, 100, 1),
('2025-09-05', 3004, 100, 1),
('2025-09-10', 3001, 500, 3),
('2025-09-15', 2004, 30, 5),
('2025-09-20', 2005, 15, 5),
('2025-09-25', 1003, 50, 7);

-- ---- Q4 2025 (primavera/verão - fim de ano) ----
INSERT INTO pedido (data, id_produto, quantidade, id_fornecedor) VALUES
('2025-10-01', 3001, 2000, 3),
('2025-10-02', 3002, 1000, 2),
('2025-10-03', 3004, 150, 1),
('2025-10-05', 1001, 100, 1),
('2025-10-07', 2001, 50, 8),
('2025-10-08', 2002, 50, 9),
('2025-10-10', 3005, 40, 1),
('2025-10-11', 3006, 20, 6),
('2025-10-15', 3003, 80, 2),
('2025-10-20', 1004, 100, 3),
('2025-10-25', 2003, 50, 10),
('2025-11-01', 3001, 2500, 3),
('2025-11-02', 3002, 1500, 2),
('2025-11-03', 1001, 150, 1),
('2025-11-04', 1002, 200, 1),
('2025-11-05', 2001, 70, 8),
('2025-11-06', 2002, 70, 9),
('2025-11-10', 1003, 80, 7),
('2025-11-11', 1004, 100, 3),
('2025-11-15', 3004, 100, 1),
('2025-11-16', 4002, 50, 1),
('2025-11-20', 5001, 20, 4),
('2025-11-21', 1005, 30, 6),
('2025-11-22', 1006, 20, 6),
('2025-11-25', 3005, 40, 1),
('2025-11-26', 3006, 20, 6),
('2025-11-27', 4003, 20, 6),
('2025-12-01', 3001, 1000, 3),
('2025-12-02', 3002, 500, 2),
('2025-12-03', 1001, 50, 1),
('2025-12-04', 2001, 50, 8),
('2025-12-05', 2004, 30, 5),
('2025-12-06', 4001, 20, 7);