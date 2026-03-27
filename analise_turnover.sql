# Analise-People-Analytics-SQL.-- Criando a tabela de funcionários
CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100),
    Departamento VARCHAR(50),
    Data_Admissao DATE,
    Data_Demissao DATE, -- Se estiver NULL, o funcionário ainda está na empresa
    Salario DECIMAL(10, 2),
    Performance_Score INT -- Nota de 1 a 5
);

-- Inserindo dados fictícios para teste
INSERT INTO Funcionarios VALUES 
(1, 'Joao Silva', 'Logística', '2023-01-10', NULL, 3500.00, 4),
(2, 'Maria Souza', 'RH', '2023-03-15', '2024-02-10', 4200.00, 5),
(3, 'Carlos Lima', 'Logística', '2023-06-20', NULL, 3100.00, 3),
(4, 'Ana Oliveira', 'Vendas', '2023-02-01', '2023-11-20', 5000.00, 2),
(5, 'Lucas Braga', 'TI', '20-- Query para ver quem não faz mais parte do quadro (Ex-funcionários)
SELECT 
    Departamento, 
    COUNT(*) AS Total_Saidas,
    AVG(Salario) AS Media_Salarial_Quem_Saiu
FROM Funcionarios
WHERE Data_Demissao IS NOT NULL
GROUP BY Departamento;24-01-05', NULL, 6000.00, 5);
