Select Customers.name as Customers
From Customers
Where Customers.id not in ( Select customerId From Orders)

