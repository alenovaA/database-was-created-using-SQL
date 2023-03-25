SET sql_mode = 'ONLY_FULL_GROUP_BY';
USE ajs8_ayana_alenova;

# task_1
SELECT DISTINCT  p.product  as продукт, sum(a.qty)  as количество
FROM actions as a,products as p
WHERE a.product_id = p.id AND a.where_stock_id = 3 AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date ) between 1 and 8 
GROUP BY p.product
ORDER BY p.product ;


# task_2
SELECT DISTINCT  p.product as продукт, sum(a.qty) as количество
FROM actions as a,products as p
WHERE a.product_id = p.id AND a.stock_id = 1 AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date )between 1 and 8 
GROUP BY p.product
ORDER BY p.product ;


# task_3
SELECT DISTINCT  c.category as категория, sum(a.qty) as qty
FROM actions as a,products as p, categories as c
WHERE a.product_id = p.id AND c.id = p.category_id AND a.where_stock_id = 1 AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date )between 1 and 8 
GROUP BY c.category
ORDER BY c.category ;

# task_4
SELECT DISTINCT  b.brand as бренд, sum(a.qty) as количество
FROM actions as a,products as p, brands as b
WHERE a.product_id = p.id AND b.id = p.brand_id AND a.where_stock_id = 1 AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date ) between 1 and 8 
GROUP BY b.brand
ORDER BY b.brand;

# task_5
SELECT DISTINCT  p.product as продукт, sum(a.qty) as количество
FROM actions as a,products as p
WHERE a.product_id = p.id AND a.supplier_id = 2 AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date ) between 3 and 8 
GROUP BY p.product
ORDER BY p.product ;

# task_6
SELECT DISTINCT  p.product as продукт, sum(a.qty) as количество
FROM actions as a,products as p
WHERE a.product_id = p.id AND a.supplier_id = 3 AND  a.where_stock_id = 1  AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date ) between 3 and 8 
GROUP BY p.product
ORDER BY p.product ;

# task_7
SELECT DISTINCT  p.product as продукт, sum(a.qty) as количество
FROM actions as a,products as p
WHERE a.product_id = p.id AND a.stock_id = 3 AND  a.where_supplier_id = 2  AND YEAR(a.action_date) = 2015  AND MONTH(a.action_date ) between 3 and 8 
GROUP BY p.product
ORDER BY p.product ;



