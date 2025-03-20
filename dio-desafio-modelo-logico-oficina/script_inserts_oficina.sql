-- Inserindo dados na tabela Cliente
INSERT INTO dio_oficina.Cliente (idCliente, Nome, CPF) VALUES
(1, 'Carlos Silva', '123.456.789-00'),
(2, 'Ana Souza', '987.654.321-00'),
(3, 'Marcos Pereira', '111.222.333-44'),
(4, 'Juliana Mendes', '555.666.777-88'),
(5, 'Fernanda Lima', '999.888.777-66');

-- Inserindo dados na tabela Veiculo
INSERT INTO dio_oficina.Veiculo (idVeiculo, Marca, Modelo, Ano, Cliente_idCliente) VALUES
(1, 'Toyota', 'Corolla', '2020', 1),
(2, 'Honda', 'Civic', '2019', 2),
(3, 'Ford', 'Focus', '2018', 3),
(4, 'Chevrolet', 'Onix', '2021', 4),
(5, 'Volkswagen', 'Golf', '2017', 5);

-- Inserindo dados na tabela Mecanico
INSERT INTO dio_oficina.Mecanico (idMecanico, Nome, Endereco, Especialidade, Veiculo_idVeiculo, Veiculo_Cliente_idCliente) VALUES
(1, 'José Almeida', 'Rua A, 123', 'Motor', 1, 1),
(2, 'Ricardo Lopes', 'Rua B, 456', 'Freios', 2, 2),
(3, 'Lucas Martins', 'Rua C, 789', 'Suspensão', 3, 3),
(4, 'Paulo Santos', 'Rua D, 321', 'Elétrica', 4, 4),
(5, 'Roberto Farias', 'Rua E, 654', 'Pintura', 5, 5);

-- Inserindo dados na tabela Revisao
INSERT INTO dio_oficina.Revisao (idRevisao, Data_Revisao, Mecanico_idMecanico, Mecanico_Veiculo_idVeiculo, Mecanico_Veiculo_Cliente_idCliente) VALUES
(1, '2025-03-01', 1, 1, 1),
(2, '2025-03-01', 2, 2, 2),
(3, '2025-03-01', 3, 3, 3),
(4, '2025-03-01', 4, 4, 4),
(5, '2025-03-01', 5, 5, 5);

-- Inserindo dados na tabela Conserto
INSERT INTO dio_oficina.Conserto (idConserto, Mecanico_idMecanico, Mecanico_Veiculo_idVeiculo, Mecanico_Veiculo_Cliente_idCliente) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 5);

-- Inserindo dados na tabela Mao_de_Obra
INSERT INTO dio_oficina.Mao_de_Obra (idMao_de_Obra, Valor) VALUES
(1, 500.00),
(2, 300.00),
(3, 450.00),
(4, 600.00),
(5, 350.00);

-- Inserindo dados na tabela OS
INSERT INTO dio_oficina.OS (idOS, Data_Emissao, Valor, Status, Data_Conclusao) VALUES
(1, '2025-03-01', '1500.00', 'Concluída', '2025-03-10'),
(2, '2025-03-05', '1200.00', 'Em andamento', '2025-03-15'),
(3, '2025-03-08', '900.00', 'Aberta', '2025-03-18'),
(4, '2025-03-12', '1800.00', 'Cancelada', '2025-03-20'),
(5, '2025-03-15', '1100.00', 'Concluída', '2025-03-22');

-- Inserindo dados na tabela Conserto_has_OS
INSERT INTO dio_oficina.Conserto_has_OS (Conserto_idConserto, Conserto_Mecanico_idMecanico, Conserto_Mecanico_Veiculo_idVeiculo, Conserto_Mecanico_Veiculo_Cliente_idCliente, OS_idOS) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

-- Inserindo dados na tabela Revisao_has_OS
INSERT INTO dio_oficina.Revisao_has_OS (Revisao_idRevisao, Revisao_Mecanico_idMecanico, Revisao_Mecanico_Veiculo_idVeiculo, Revisao_Mecanico_Veiculo_Cliente_idCliente, OS_idOS) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

-- Inserindo dados na tabela Mao_de_Obra_has_Revisao_has_OS
INSERT INTO dio_oficina.Mao_de_Obra_has_Revisao_has_OS (Mao_de_Obra_idMao_de_Obra, Revisao_has_OS_Revisao_idRevisao, Revisao_has_OS_Revisao_Mecanico_idMecanico, Revisao_has_OS_Revisao_Mecanico_Veiculo_idVeiculo, Revisao_has_OS_Revisao_Mecanico_Veiculo_Cliente_idCliente) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

-- Inserindo dados na tabela Mao_de_Obra_has_Conserto_has_OS
INSERT INTO dio_oficina.Mao_de_Obra_has_Conserto_has_OS (Mao_de_Obra_idMao_de_Obra, Conserto_has_OS_Conserto_idConserto, Conserto_has_OS_Conserto_Mecanico_idMecanico, Conserto_has_OS_Conserto_Mecanico_Veiculo_idVeiculo, Conserto_has_OS_Conserto_Mecanico_Veiculo_Cliente_idCliente) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(3, 3, 3, 3, 3),
(4, 4, 4, 4, 4),
(5, 5, 5, 5, 5);

