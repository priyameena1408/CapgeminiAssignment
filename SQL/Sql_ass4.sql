Use SQL_ASS
go

--  Write a query to get most expense and least expensive Product list (name and unit price).
select ProductName, UnitPrice from Product 
where UnitPrice = (select max(UnitPrice) from Product)
union
select ProductName, UnitPrice from Product 
where UnitPrice = (select min(UnitPrice) from Product)


-- Display the list of products that are out of stock
select ProductName from Product where isDiscontinued = 1


--  Display complete list of customers, the OrderID and date of any orders they have made 
select Customer.*, [Order].Id, OrderDate
from Customer
Join [Order]
On Customer.Id = [Order].CustomerId


--	Write  query that determines the customer who has placed the maximum number of orders
With Cte_OrderCount As(
Select CustomerId, count(CustomerId) as OrdersPlaced from [Order] 
group by CustomerId
)
select * from Customer where id = (select CustomerId from Cte_OrderCount where OrdersPlaced = (select max(OrdersPlaced) from Cte_OrderCount))


--	Display the customerid whose name has substring ‘RA’
Select Id from Customer where FirstName+LastName like '%RA%'


/*
For Question number 1,2,3,6,7 and 11 
No data is provided
*/