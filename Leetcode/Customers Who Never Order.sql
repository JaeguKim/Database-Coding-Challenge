Select Customers.Name As Customers
From Customers
Where 
Customers.Id 
Not In(Select Customers.Id As Name From Customers, Orders Where Customers.Id = Orders.CustomerId)

#Simpler Solution
Select Customers.Name As Customers
From Customers
Where 
Customers.Id 
Not In(Select CustomerId From Orders)
