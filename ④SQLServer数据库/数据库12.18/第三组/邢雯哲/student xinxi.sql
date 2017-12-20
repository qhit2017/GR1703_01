select * from xinxi
insert into xinxi values(1,'楚楚',18,'女','香港')
insert into xinxi values(2,'李明',19,'女','上海')
insert into xinxi values(3,'李磊',20,'男','北京') 
insert into xinxi values(4,'雅欣',10,'女','浙江')
insert into xinxi values(5,'馨馨',10,'女','天津')

update xinxi set address='周口' where address='香港'or address='上海' or address='北京'
update xinxi set age=30 where age=19
delete from xinxi where name='李磊'
delete from xinxi where age>10
delete from xinxi 