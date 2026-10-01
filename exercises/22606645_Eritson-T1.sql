--22606645
--Eritson Rocha

--Pergunta 1: duas tabelas fundamentais
Select * FROM production.products
select * from sales.staffs
--Ambas as tabelas não estão relacionadas pois não partilham dados entre si

--Pergunta 2: operações básicas
SELECT first_name, last_name, customer_id from sales.customers where customer_id not BETWEEN 50 and 150

--pergunta 3
SELECT CONCAT(first_name, ' ', last_name) AS 'Nome completo', email as 'Correio eletrónico' from sales.customers WHERE email IS NOT NULL

--Pergunta 4: consultas formatadas
SELECT CONCAT(LOWER(first_name), ' ', LOWER(last_name)) AS 'Nome completo', staff_id AS 'ID', phone AS 'Tlm' from sales.staffs

--pergunta 5: inserções e validação
SET IDENTITY_INSERT sales.order_items ON
INSERT sales.order_items (order_id, item_id, product_id, quantity, list_price, list_price, discount)

--pergunta 6
SELECT UPPER(first_name), last_name from sales.staffs

UPDATE sales.staffs SET active = 0 where manager_id is NULL
SELECT first_name, active from sales.staffs where manager_id is NULL

--pergunta 7
SELECT customer_id, first_name, last_name, phone from sales.customers c CASE c.phone = customer_id WHEN phone is NULL
