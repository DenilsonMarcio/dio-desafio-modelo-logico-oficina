-- 1. Recupera todos os clientes
SELECT * FROM dio_oficina.Cliente;

-- 2. Recupera os veículos de um cliente específico (idCliente = 1)
SELECT * 
FROM dio_oficina.Veiculo
WHERE Cliente_idCliente = 1;

-- 3. Recupera os clientes e calcula o número de veículos de cada um
SELECT Cliente.idCliente, Cliente.Nome, COUNT(Veiculo.idVeiculo) AS Numero_de_Veiculos
FROM dio_oficina.Cliente
JOIN dio_oficina.Veiculo ON Cliente.idCliente = Veiculo.Cliente_idCliente
GROUP BY Cliente.idCliente, Cliente.Nome;

-- 4. Recupera os mecânicos ordenados pelo nome
SELECT * 
FROM dio_oficina.Mecanico
ORDER BY Nome ASC;

-- 5. Recupera os mecânicos que atendem ao menos 1 veículo
SELECT Mecanico.idMecanico, Mecanico.Nome, COUNT(DISTINCT Veiculo.idVeiculo) AS Quantidade_de_Veiculos
FROM dio_oficina.Mecanico
JOIN dio_oficina.Veiculo ON Mecanico.Veiculo_idVeiculo = Veiculo.idVeiculo
GROUP BY Mecanico.idMecanico, Mecanico.Nome
HAVING COUNT(DISTINCT Veiculo.idVeiculo) <= 1;

-- 6. Recupera os mecânicos e os veículos atendidos por eles
SELECT Mecanico.Nome AS Mecânico, Veiculo.Modelo AS Veículo, Veiculo.Ano AS Ano
FROM dio_oficina.Mecanico
INNER JOIN dio_oficina.Veiculo ON Mecanico.Veiculo_idVeiculo = Veiculo.idVeiculo
ORDER BY Mecanico.Nome;

-- 7. Recupera todos os clientes e seus respectivos veículos, incluindo clientes sem veículos
SELECT Cliente.Nome AS Cliente, Veiculo.Modelo AS Veículo
FROM dio_oficina.Cliente
LEFT JOIN dio_oficina.Veiculo ON Cliente.idCliente = Veiculo.Cliente_idCliente
ORDER BY Cliente.Nome;

-- 8. Recupera todos os veículos e suas revisões, incluindo veículos sem revisão
SELECT Veiculo.Modelo AS Veículo, Revisao.Data_Revisao AS Data_Revisao
FROM dio_oficina.Veiculo
RIGHT JOIN dio_oficina.Revisao ON Veiculo.idVeiculo = Revisao.Mecanico_Veiculo_idVeiculo
ORDER BY Veiculo.Modelo;
