/*
1) Listar o nome do produto, categoria e a soma total de vendas para cada produto,
ordenando pelo valor total de vendas em ordem decrescente:
*/
SELECT 
    Produto,
    Categoria,
    SUM(Quantidade * Preco)  as Total_Vendas
FROM
    vendas_ferragista
GROUP BY
    Produto,
    Categoria
ORDER BY
    Total_Vendas DESC;

/*
  Supondo que os dados criados com Python
  sejam uma tabela em um banco de dados com o nome de vendas_ferragista.
*/

/*
2) Identificar os produtos que venderam menos no mês de junho de 2024.
*/

SELECT
    Produto,
    SUM(Quantidade) AS Total_Vendas_Junho
FROM
    vendas_ferragista
WHERE
    YEAR(Data) = 2023
    AND MONTH(Data) = 6
ORDER BY
    Total_Vendas_Junho ASC
LIMIT 10;

/*
  Como a variável Data foi criada como uma timestamp com horas minutos e segundos,
  precisaríamos extrair através de condicional apenas o ano de 2023 e o mês de Junho
  Como não foi especificado quantos produtos que venderam menos deveriam ser retornados,
  deixei o limite para 10 produtos podendo alterar caso necessário.
*/