--1 ��ѧ�����е����е�ַ������Ϊ�ܿ�
--2 ��ѧ����������Ϊ������ͬѧ�����Ϊ30���Ա��Ϊ��
--3 ɾ��ѧ�������������
--4 ɾ��ѧ����������Ϊ���ڵ�ͬѧ
--5 ɾ��ѧ����������>10��ͬѧ

drop table student3
create table student3(
	sid int,
	sname nvarchar(10),
	saddress nvarchar(20),
	sex nchar(1),
	sage int
)
select * from student3
insert into student3 values(001,'�����','����','��',20)
update student3 set saddress='�ܿ�'
update student3 set sage=30,sex='��' where sname='����'
delete from student3
delete from student3 where sname='����'
delete from student3 where sage>10