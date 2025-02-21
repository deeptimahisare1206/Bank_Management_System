use bank_management;
create table user(
accountno bigint primary key auto_increment,
	firstname varchar(255),
    lastname varchar(255),
    birthdate date,
    address varchar(255),
    gmail varchar(255),
    phoneno bigint,
    password varchar(8),
    accType varchar(50),
    image varchar(255)

);
alter table user auto_increment=101;
truncate table user;
select * from bank_management.user;



create table contacts(
Sno int primary key auto_increment,
Name varchar(255),
    Email varchar(255),
     Message varchar(2000)
);

select * from bank_management.contacts;

