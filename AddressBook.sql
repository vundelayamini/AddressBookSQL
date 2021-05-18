
---------UC1--------
CREATE DATABASE AddressBookService;
use AddressBookService;
--------UC2----------
create table AddressBook
(
    first_name varchar(255) not null,
    last_name varchar(255) not null,
    address varchar(255) not null,
    city varchar(255),
    state varchar(255),
    zip int Null,
    phone_number varchar(255) not null
);
--------UC3--------------
insert into AddressBook values
('Yamini','Mahi','Marthalli','Banglore','Karnataka',60605,'3889233120'),
('Jhanu','Asmin','Mahadevpura','Banglore','Karnataka',98116,'8332443923'),
('Gayi','Dorsani','ChennaiHighway','chennai','Tamilnadu',10011,'8832322103'),
('Ravi','Ashok','Reddypalem','Nellore','Andhrapradesh',56478,'9876543217')
SELECT * FROM AddressBook;
----------UC4-------------
update AddressBook
set address = 'Mahadevpura Bakary Street'
where first_name = 'ravi' AND last_name = 'Ashok'
----------UC5-------------
delete from AddressBook
where first_name = 'Yamini' AND last_name = 'Mahi'
----------UC6------------
select * from AddressBook 
where city = 'Nellore';
select * from AddressBook 
where state = 'Andhrapradesh';
----------UC7------------
select city,COUNT(city) as total_count
from AddressBook 
group by city
select state,COUNT(state) as total_count
from AddressBook 
group by state
---------UC8-----------
select * from AddressBook 
where city = 'Chennai'
order by first_name
--------UC9------------
Alter table AddressbookTable ADD AddressBookName varchar(255), AddressBookType varchar(255);
SELECT * FROM AddressBook;

UPDATE AddressBook SET address = 'family', address='Book1' WHERE first_name='Jhanu';
UPDATE AddressBook SET address = 'friends', address='Book2' WHERE first_name='Asmin';

SELECT * FROM AddressBook where address = 'family';
SELECT * FROM AddressBook where address = 'Book2';
----------UC10----------------
SELECT COUNT(first_name) as ContactPerson,address FROM AddressBook GROUP BY address;
SELECT * FROM AddressBook;
