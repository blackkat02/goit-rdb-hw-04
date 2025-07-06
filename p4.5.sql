USE hw_3db;

SELECT
    cat.id AS CategoryID,   
    cat.name AS CategoryName,  
    COUNT(*) AS TotalItemsInOrders,  
    AVG(od.quantity) AS AverageQuantity 
FROM
    order_details od  
INNER JOIN
    products p ON od.product_id = p.id 
INNER JOIN
    categories cat ON p.category_id = cat.id 
GROUP BY
    cat.id,
    cat.name 
HAVING AVG(od.quantity) > 21;
