Use SQL_ASS
go


--write a query to display the orders placed by customer with phone number 030-0074321
select * from [Order] where CustomerId in (select id from Customer where Phone = '0300074321')

--Display the orders placed by customers not in London
select * from [Order] where CustomerId not in (select id from Customer where City = 'London')

--selects all the order which are placed for the product Chai.
select * from [Order] where Id in (select OrderId from OrderItem where 
ProductId in (select Id from Product where ProductName='Chai'))	

/*
For Question number 2 and 5, no data is provided
*/