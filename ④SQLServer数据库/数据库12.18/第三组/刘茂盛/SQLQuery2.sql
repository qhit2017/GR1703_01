select *from student
--���ֶ������ı�
insert into student values(1,'����','��',20,'�Ϻ�');
insert into student values(2,'С��','Ů',18,'�Ϻ�');
insert into student values(3,'����','��',25,'����');
insert into student values(4,'����','��',24,'�ܿ�');
insert into student values(5,'��ͷ','��',9,'�㽭');
insert into student values(6,'����','��',23,'����');
insert into student values(7,'����','��',22,'����');

--��һ�⣺
update student set address='�ܿ�';

--�ڶ��⣺
update student set age=30,sex='��' where name='����';

--�����⣺
delete from student;

--�����⣺
delete from student where name='����';

--�����⣺
delete from student where age>10;

