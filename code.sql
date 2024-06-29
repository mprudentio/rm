SELECT b.Date as order_date, a.categoryName as category_name,  c.ProdName as product_name,c.Price as product_price, b.Quantity as order_qty, (b.Quantity*c.Price) as total_sales, d.CustomerEmail as cust_email, d.CustomerCity as cust_city
FROM `qwiklabs-gcp-03-65f7f5813dc9.product.prodcategory` a
JOIN `qwiklabs-gcp-03-65f7f5813dc9.product.orders` b
ON a.CategoryAbbreviation = LEFT(b.ProdNumber,2)
JOIN `qwiklabs-gcp-03-65f7f5813dc9.product.products` c
ON b.ProdNumber = c.ProdNumber
JOIN `qwiklabs-gcp-03-65f7f5813dc9.product.customers` d
ON b.CustomerID = d.CustomerID
ORDER BY b.Date ASC
