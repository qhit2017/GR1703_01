select *from student

insert into student values(1,'С��','��',20,'����');
insert into student values(2,'С��','Ů',18,'�Ϻ�');
insert into student values(3,'С��','��',25,'����');
insert into student values(4,'С��','Ů',18,'�ܿ�');
insert into student values(5,'С��','��',9,'�㽭');
insert into student values(6,'С��','��',23,'����');
insert into student values(7,'С��','��',22,'����');


update student set address='�ܿ�';

update student set age=30,sex='��' where name='����';

delete from student;

delete from student where name='����';

delete from student where age>10;

