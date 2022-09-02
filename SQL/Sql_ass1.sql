use SQL_ASS
go

create database SQL_ASS

create table Customer(
Id int primary key,
FirstName nvarchar(40) not null,
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20)
)

Create table [Order] (
Id int primary key,
OrderDate datetime not null,
OrderNumber nvarchar(10),
CustomerId int foreign key references Customer(Id),
TotalAmount decimal(12, 2)
)

Create table Product (
Id int primary key,
ProductName nvarchar(50),
UnitPrice decimal(12, 2),
Package nvarchar(30),
isDiscontinued bit
)

Create table OrderItem (
Id int primary key,
OrderId int foreign key references [Order](Id),
ProductId int foreign key references Product(Id),
UnitPrice decimal(12, 2),
Quantity int
)

Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) Values(1, 'Rahul', 'Dey', 'Agra', 'Ireland', '4526379541')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (2, 'Suzzy', 'Harley', 'Washington', 'USA', '4152987456')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (3, 'Kameshwar', 'Pawar', 'Berlin', 'Germany', '5289631475')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (4, 'Abdul', 'Das', 'Chittagong', 'Bangladesh', '2579631475')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (5, 'Saina', 'Debnath', 'Agartala', 'Iran', null)
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (6, 'Riya', 'Jain', 'Alwar', 'Australia', '8523694563')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (7, 'Tina', 'Sharma', 'Rourkela', 'France', '0300074321')
Insert into Customer (Id ,FirstName, LastName, City, Country, Phone) values (8, 'Priya', 'Meena', 'London', 'UK', '8523647965')


Insert into [Order] Values(1, '2023-05-23 02:00:00', '001', 3, 100)
Insert into [Order] Values(2, '2020-07-06 07:08:00', '002', 2, 150)
Insert into [Order] Values(3, '2023-04-04 10:12:00', '003', 6, 50)
Insert into [Order] Values(4, '2021-06-03 11:06:00', '004', 8, 320)
Insert into [Order] Values(5, '2022-09-02 10:00:00', '005', 7, 200)
Insert into [Order] Values(6, '2022-10-02 12:05:00', '006', 8, 250)


Insert into Product Values(1, 'Pen', 11, '',0);
Insert into Product Values(2, 'Eraser', 27, '',0);
Insert into Product Values(3, 'Chair', 7, '',1);
Insert into Product Values(4, 'Laptop', 6, '',1);
Insert into Product Values(5, 'Chai', 13, '',0);


Insert into OrderItem Values(1, 4, 4, 15, 5)
Insert into OrderItem Values(3, 4, 3, 18, 20)
Insert into OrderItem Values(6, 1, 1, 20, 25)
Insert into OrderItem Values(2, 2, 4, 12, 5)
Insert into OrderItem Values(4, 3, 2, 30, 20)
Insert into OrderItem Values(5, 5, 5, 15, 15)


select * from Customer    -- to display customer details

select Country from Customer where Country like '[AI]%'   --to display country whose name starts with A or I
 
select FirstName+' '+LastName from Customer where FirstName like '__i%'  --to display name of customers whose third letter is i

