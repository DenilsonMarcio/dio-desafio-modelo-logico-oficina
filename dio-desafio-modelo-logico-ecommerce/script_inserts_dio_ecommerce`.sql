INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (1, 'Pessoa Física');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (2, 'Pessoa Jurídica');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (3, 'Pessoa Física');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (4, 'Pessoa Jurídica');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (5, 'Pessoa Física');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (6, 'Pessoa Física');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (7, 'Pessoa Jurídica');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (8, 'Pessoa Física');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (9, 'Pessoa Jurídica');
INSERT INTO `dio_ecommerce`.`PF_PJ` (`id`, `tipo_cliente`) VALUES (10, 'Pessoa Física');

INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (1, 'Carlos Silva', '12345678901', 'Rua A, 123', 1);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (2, 'Empresa X', '9876543210001', 'Av. B, 456', 2);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (3, 'Ana Souza', '32165498702', 'Rua C, 789', 3);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (4, 'Comércio Y', '8529637410001', 'Av. D, 321', 4);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (5, 'Bruno Lima', '78945612303', 'Rua E, 654', 5);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (6, 'Fernanda Costa', '45612378904', 'Rua F, 321', 6);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (7, 'Empresa Z', '9632587410002', 'Av. G, 789', 7);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (8, 'João Mendes', '75315985206', 'Rua H, 147', 8);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (9, 'Indústria K', '1472583690003', 'Av. I, 963', 9);
INSERT INTO `dio_ecommerce`.`Cliente` (`idCliente`, `nome`, `identificacao`, `endereco`, `PF_PJ_id`) VALUES (10, 'Mariana Lopes', '36985214707', 'Rua J, 258', 10);

INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (1, 'Eletrônico', 'Smartphone XYZ', '1500.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (2, 'Eletrodoméstico', 'Geladeira ABC', '2500.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (3, 'Móveis', 'Sofá Confort', '1200.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (4, 'Automotivo', 'Pneu X', '800.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (5, 'Informática', 'Notebook Ultrafino', '3500.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (6, 'Vestuário', 'Jaqueta de Couro', '500.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (7, 'Alimentos', 'Chocolate Gourmet', '50.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (8, 'Brinquedos', 'Carrinho Controle Remoto', '200.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (9, 'Ferramentas', 'Furadeira 500W', '300.00');
INSERT INTO `dio_ecommerce`.`Produto` (`idProduto`, `categoria`, `descricao`, `valor`) VALUES (10, 'Perfumaria', 'Perfume Importado', '600.00');

INSERT INTO `dio_ecommerce`.`Pagamento` (`idPagamento`, `pagamento`) VALUES (1, 'Cartão de Crédito');
INSERT INTO `dio_ecommerce`.`Pagamento` (`idPagamento`, `pagamento`) VALUES (2, 'Boleto');
INSERT INTO `dio_ecommerce`.`Pagamento` (`idPagamento`, `pagamento`) VALUES (3, 'Pix');
INSERT INTO `dio_ecommerce`.`Pagamento` (`idPagamento`, `pagamento`) VALUES (4, 'Transferência Bancária');
INSERT INTO `dio_ecommerce`.`Pagamento` (`idPagamento`, `pagamento`) VALUES (5, 'Cartão de Débito');

INSERT INTO `dio_ecommerce`.`Pedido` (`idPedido`, `status`, `descricao`, `Cliente_idCliente`, `frete`, `Pagamento_idPagamento`) VALUES (1, 'Enviado', 'Pedido de smartphone', 1, 20.00, 1);
INSERT INTO `dio_ecommerce`.`Pedido` (`idPedido`, `status`, `descricao`, `Cliente_idCliente`, `frete`, `Pagamento_idPagamento`) VALUES (2, 'Processando', 'Pedido de geladeira', 2, 50.00, 2);
INSERT INTO `dio_ecommerce`.`Pedido` (`idPedido`, `status`, `descricao`, `Cliente_idCliente`, `frete`, `Pagamento_idPagamento`) VALUES (3, 'Entregue', 'Pedido de sofá', 3, 30.00, 3);
INSERT INTO `dio_ecommerce`.`Pedido` (`idPedido`, `status`, `descricao`, `Cliente_idCliente`, `frete`, `Pagamento_idPagamento`) VALUES (4, 'Cancelado', 'Pedido de pneu', 4, 15.00, 4);
INSERT INTO `dio_ecommerce`.`Pedido` (`idPedido`, `status`, `descricao`, `Cliente_idCliente`, `frete`, `Pagamento_idPagamento`) VALUES (5, 'Enviado', 'Pedido de notebook', 5, 25.00, 5);

INSERT INTO `dio_ecommerce`.`Estoque` (`idEstoque`, `local`) VALUES (1, 'Depósito Central');
INSERT INTO `dio_ecommerce`.`Estoque` (`idEstoque`, `local`) VALUES (2, 'Loja A');
INSERT INTO `dio_ecommerce`.`Estoque` (`idEstoque`, `local`) VALUES (3, 'Loja B');
INSERT INTO `dio_ecommerce`.`Estoque` (`idEstoque`, `local`) VALUES (4, 'Centro de Distribuição');
INSERT INTO `dio_ecommerce`.`Estoque` (`idEstoque`, `local`) VALUES (5, 'Armazém Secundário');

INSERT INTO `dio_ecommerce`.`Fornecedor` (`idFornecedor`, `razao_social`, `CNPJ`) VALUES (1, 'Tech Solutions LTDA', '12345678000199');
INSERT INTO `dio_ecommerce`.`Fornecedor` (`idFornecedor`, `razao_social`, `CNPJ`) VALUES (2, 'Moveis Confort', '22345678000188');
INSERT INTO `dio_ecommerce`.`Fornecedor` (`idFornecedor`, `razao_social`, `CNPJ`) VALUES (3, 'EletroMaster', '32345678000177');
INSERT INTO `dio_ecommerce`.`Fornecedor` (`idFornecedor`, `razao_social`, `CNPJ`) VALUES (4, 'Auto Peças Brasil', '42345678000166');
INSERT INTO `dio_ecommerce`.`Fornecedor` (`idFornecedor`, `razao_social`, `CNPJ`) VALUES (5, 'Moda Fashion', '52345678000155');

INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (1, 1);
INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (1, 5);
INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (2, 3);
INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (3, 2);
INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (4, 4);
INSERT INTO `dio_ecommerce`.`Disponibilidade_Produto` (`Fornecedor_idFornecedor`, `Produto_idProduto`) VALUES (5, 6);

INSERT INTO `dio_ecommerce`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`, `quantidade`) VALUES (1, 1, 50);
INSERT INTO `dio_ecommerce`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`, `quantidade`) VALUES (2, 2, 30);
INSERT INTO `dio_ecommerce`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`, `quantidade`) VALUES (3, 3, 20);
INSERT INTO `dio_ecommerce`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`, `quantidade`) VALUES (4, 4, 15);
INSERT INTO `dio_ecommerce`.`Produto_has_Estoque` (`Produto_idProduto`, `Estoque_idEstoque`, `quantidade`) VALUES (5, 5, 40);

INSERT INTO `dio_ecommerce`.`Revendedor` (`idRevendedor`, `razao_social`, `local`) VALUES (1, 'Tech Revendas', 'São Paulo');
INSERT INTO `dio_ecommerce`.`Revendedor` (`idRevendedor`, `razao_social`, `local`) VALUES (2, 'Móveis Express', 'Rio de Janeiro');
INSERT INTO `dio_ecommerce`.`Revendedor` (`idRevendedor`, `razao_social`, `local`) VALUES (3, 'Eletro Distribuidor', 'Belo Horizonte');
INSERT INTO `dio_ecommerce`.`Revendedor` (`idRevendedor`, `razao_social`, `local`) VALUES (4, 'Auto Partes', 'Curitiba');
INSERT INTO `dio_ecommerce`.`Revendedor` (`idRevendedor`, `razao_social`, `local`) VALUES (5, 'Moda Atacadista', 'Porto Alegre');

INSERT INTO `dio_ecommerce`.`Produtos_Revendedor` (`Produto_idProduto`, `Revendedor_idRevendedor`, `quantidade`) VALUES (1, 1, 10);
INSERT INTO `dio_ecommerce`.`Produtos_Revendedor` (`Produto_idProduto`, `Revendedor_idRevendedor`, `quantidade`) VALUES (2, 2, 15);
INSERT INTO `dio_ecommerce`.`Produtos_Revendedor` (`Produto_idProduto`, `Revendedor_idRevendedor`, `quantidade`) VALUES (3, 3, 20);
INSERT INTO `dio_ecommerce`.`Produtos_Revendedor` (`Produto_idProduto`, `Revendedor_idRevendedor`, `quantidade`) VALUES (4, 4, 25);
INSERT INTO `dio_ecommerce`.`Produtos_Revendedor` (`Produto_idProduto`, `Revendedor_idRevendedor`, `quantidade`) VALUES (5, 5, 30);

INSERT INTO `dio_ecommerce`.`Entrega` (`idEntrega`, `status`, `cod_rastreio`, `Pedido_idPedido`) VALUES (1, 'Em Trânsito', 'BR123456789', 1);
INSERT INTO `dio_ecommerce`.`Entrega` (`idEntrega`, `status`, `cod_rastreio`, `Pedido_idPedido`) VALUES (2, 'Entregue', 'BR987654321', 2);
INSERT INTO `dio_ecommerce`.`Entrega` (`idEntrega`, `status`, `cod_rastreio`, `Pedido_idPedido`) VALUES (3, 'Aguardando Envio', 'BR456123789', 3);
INSERT INTO `dio_ecommerce`.`Entrega` (`idEntrega`, `status`, `cod_rastreio`, `Pedido_idPedido`) VALUES (4, 'Saiu para Entrega', 'BR789456123', 4);
INSERT INTO `dio_ecommerce`.`Entrega` (`idEntrega`, `status`, `cod_rastreio`, `Pedido_idPedido`) VALUES (5, 'Aguardando Pagamento', 'BR321654987', 5);