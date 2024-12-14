CREATE	DATABASE FirstProject;

CREATE TABLE Persons(
PersonID INT primary key,
LastName varchar(50),
FirstName varchar(50),
Age int
);

insert into Persons(PersonID,LastName,FirstName,Age) 
values(1,'P','Abhyanth',24),
(2,'P','Aashlesh',24),
(3,'Thakur','Ajay',24);

CREATE TABLE orders (
  OrderID INT,
  OrderNumber INT,
  PersonID INT,
  foreign key (PersonID) REFERENCES Persons(PersonID)
);


insert into orders(
OrderID,OrderNumber,PersonID)
values
(1,77895,1),(2,44678,1),(3,22456,2),(4,24562,3);


insert into orders 
Values(5,23456,3);


insert into Persons(PersonID,LastName,FirstName,Age) 
values
(4,'Hooda','Deepak',24);

alter table orders 
drop foreign key orders_ibfk_1;

show create table orders;

alter table orders 
ADD foreign key (PersonID) REFERENCES Persons(PersonID)
on delete cascade
on update cascade;


delete from persons where PersonID=2;


select * from persons;
select * from orders;


alter table orders 
ADD foreign key (PersonID) REFERENCES Persons(PersonID)
on delete set null
on update cascade;
