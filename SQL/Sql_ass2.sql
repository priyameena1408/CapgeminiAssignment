use SQL_ASS
go

select * from Customer where Country = 'Germany'  --to display the details from Customer table who is from country Germany

select FirstName+' '+LastName as FullName from Customer      --to display the fullname of Employee

select * from Customer where FirstName like '_u%'  --to display the customer details whose name holds second letter as U

select * from [Order] where Id in (select OrderId from OrderItem where UnitPrice>10  unitPrice<20)
--to select order Details where unit price is greater than 10 and less than 20

select (select ProductName from Product where Product.Id = OrderItem.ProductId) as [Product Name],
avg(Quantity) as [Average Quantity] from OrderItem
group by ProductId
--to print the average quantity ordered for every product

/*For remaining questions
No data is provided*/


