select * from xinxi
insert into xinxi values(1,'����',18,'Ů','���')
insert into xinxi values(2,'����',19,'Ů','�Ϻ�')
insert into xinxi values(3,'����',20,'��','����') 
insert into xinxi values(4,'����',10,'Ů','�㽭')
insert into xinxi values(5,'ܰܰ',10,'Ů','���')

update xinxi set address='�ܿ�' where address='���'or address='�Ϻ�' or address='����'
update xinxi set age=30 where age=19
delete from xinxi where name='����'
delete from xinxi where age>10
delete from xinxi 