desc employee;

insert employee(employee_id, employee_name)
value(10, "Harrison");

select * from employee;

-- not null 

create table cars(
car_brand varchar(50) not null,
car_color varchar(50)not null ,
car_sale_price int
);

desc cars;

-- insert partial columns
insert into cars(car_brand, car_sale_price)
value('Luxgen', 500000);

show warnings;
#Field 'car_color' doesn't have a default value

select * from cars;

-- multi insertion
insert into cars(car_brand, car_color, car_sale_price)
values("Luxgen", "yellow", 500000),("Luxgen", "red");

show warnings;
#Column count doesn't match value count at row 2

-- insert null manually
insert into cars(car_brand, car_color, car_sale_price)
values("Luxgen", "yellow", 500000),("Luxgen", "red", null);

select * from cars;