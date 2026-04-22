SELECT TOP 5 * FROM [dbo].[expense_data_2025];
#total_expense

SELECT SUM(amount) AS total_expense
FROM [dbo].[expense_data_2025];

SELECT category, SUM(amount) AS total
FROM [dbo].[expense_data_2025]
GROUP BY category
ORDER BY total DESC;

SELECT 
    FORMAT(date, 'yyyy-MM') AS month,
    SUM(amount) AS total
FROM [dbo].[expense_data_2025]
GROUP BY FORMAT(date, 'yyyy-MM')
ORDER BY month;