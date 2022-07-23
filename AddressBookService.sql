create database AddressBookService;
show databases;
use addressBookService;

create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));
desc addressBook;

insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Manoj','Gupta','mankhurd','mumbai',
'maharastra','586115','944879444','manoj@gmail.com' ),('Bhooshan','nalakar','haveri','haveri','Karnataka','587115','9422101502','bhoshan@gmail.com')
,('Sohan','Dhari','Bangalore','Bangalore','karnataka','560100','8626001501','sohandhari@gmail.com');
select *from addressBook;


update addressBook set phone = '6362829473' where firstname = 'Manoj';

delete from addressBook where firstname = 'Sohan';

select *from addressBook where city = 'vjayapur';

select count(*) from addressBook where state = 'Karnataka';

select *from addressBook where state = 'karnataka' order by firstname;

alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1' where firstname = 'Manoj';
update addressBook set bookname='Book2' where firstname = 'bhooshan';
update addressBook set bookname='Book3' where firstname = 'Sohan';
update addressBook set booktype='Family' where firstname = 'Manoj';
update addressBook set booktype='Friends' where firstname = 'Bhooshan';
update addressBook set booktype='Profession' where firstname = 'Sohan';


select booktype, count(*) from addressBook group by booktype;