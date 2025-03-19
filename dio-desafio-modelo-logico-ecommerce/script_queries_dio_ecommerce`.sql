-- 1. Buscar pedidos de cliente por id?
SELECT * FROM `dio_ecommerce`.`Pedido` WHERE `Cliente_idCliente` = 1;

-- 2. Listar produtos ordenados pelo valor de forma decrescente?
SELECT * FROM `dio_ecommerce`.`Produto` ORDER BY CAST(`valor` AS DECIMAL(10,2)) DESC;

-- 3. Contar quantos pedidos existem por status? 
SELECT `status`, COUNT(*) AS total_pedidos FROM `dio_ecommerce`.`Pedido` GROUP BY `status`;

-- 4. Filtrar status com mais de 1 pedido?
SELECT `status`, COUNT(*) AS total_pedidos FROM `dio_ecommerce`.`Pedido` GROUP BY `status` HAVING COUNT(*) > 1;

-- 5. Buscar pedidos junto com os nomes dos clientes?
SELECT p.idPedido, p.status, c.nome 
FROM `dio_ecommerce`.`Pedido` p
JOIN `dio_ecommerce`.`Cliente` c ON p.Cliente_idCliente = c.idCliente;

-- 6. Média do valor dos produtos por categoria?
SELECT categoria, ROUND(AVG(CAST(valor AS DECIMAL(10,2))), 2) AS media_valor FROM `dio_ecommerce`.`Produto` GROUP BY categoria;

-- 7. Número de categorias distintas de produtos?
SELECT COUNT(DISTINCT categoria) AS total_categorias FROM `dio_ecommerce`.`Produto`;

-- 8. Buscar pedidos pagos com Pix?
SELECT p.idPedido, p.status, pg.pagamento 
FROM `dio_ecommerce`.`Pedido` p
JOIN `dio_ecommerce`.`Pagamento` pg ON p.Pagamento_idPagamento = pg.idPagamento
WHERE pg.pagamento = 'Pix';

-- 9. Quantos pedidos foram feitos por cada cliente?
SELECT Cliente.idCliente, Cliente.nome, COUNT(Pedido.idPedido) AS total_pedidos
FROM Cliente
LEFT JOIN Pedido ON Cliente.idCliente = Pedido.Cliente_idCliente
GROUP BY Cliente.idCliente, Cliente.nome
ORDER BY total_pedidos DESC;

-- 10. Algum vendedor também é fornecedor?
SELECT Revendedor.idRevendedor, Revendedor.razao_social
FROM Revendedor
INNER JOIN Fornecedor ON Revendedor.razao_social = Fornecedor.razao_social;

-- 11. Relação de produtos, fornecedores e estoques?
SELECT 
    Produto.idProduto,
    Produto.descricao AS produto_nome,
    Fornecedor.razao_social AS fornecedor_nome,
    Estoque.local AS local_estoque,
    Produto_has_Estoque.quantidade AS quantidade_estoque
FROM Produto
JOIN Disponibilidade_Produto ON Produto.idProduto = Disponibilidade_Produto.Produto_idProduto
JOIN Fornecedor ON Disponibilidade_Produto.Fornecedor_idFornecedor = Fornecedor.idFornecedor
JOIN Produto_has_Estoque ON Produto.idProduto = Produto_has_Estoque.Produto_idProduto
JOIN Estoque ON Produto_has_Estoque.Estoque_idEstoque = Estoque.idEstoque
ORDER BY Produto.idProduto;

-- 12. Relação de nomes dos fornecedores e nomes dos produtos?
SELECT 
    Fornecedor.razao_social AS fornecedor_nome,
    Produto.descricao AS produto_nome
FROM Fornecedor
JOIN Disponibilidade_Produto ON Fornecedor.idFornecedor = Disponibilidade_Produto.Fornecedor_idFornecedor
JOIN Produto ON Disponibilidade_Produto.Produto_idProduto = Produto.idProduto
ORDER BY Fornecedor.razao_social;