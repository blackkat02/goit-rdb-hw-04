SELECT
    o.id AS OrderID,
    o.date, 
    c.name AS CustomerName,
    e.last_name AS EmployeeName, 
    e.first_name AS EmployeeName, 
    s.name AS ShipperName,
    od.quantity,
    p.name AS ProductName,
    p.name AS ProductName,
    p.price AS ProductUnitPrice, 
    cat.name AS CategoryName,
    cat.description AS CategoryDescription,
    sup.name AS SupplierName,
    sup.contact AS SupplierContact
FROM
    orders o
INNER JOIN
    customers c ON o.customer_id = c.id
INNER JOIN
    employees e ON o.employee_id = e.employee_id
INNER JOIN
    shippers s ON o.shipper_id = s.id 
INNER JOIN
    order_details od ON o.id = od.order_id
INNER JOIN
    products p ON od.product_id = p.id
INNER JOIN
    categories cat ON p.category_id = cat.id
INNER JOIN
    suppliers sup ON p.supplier_id = sup.id
