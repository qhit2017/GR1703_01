insert into student values(1,'С��','��',9,'ɽ��');
insert into student values (2,'����','Ů',18,'����');
insert into student values (3,'����','��',17,'����');
insert into student values (4,'С��','Ů',8,'�Ϻ�');
select * from student
--1 ��ѧ�����е����е�ַ������Ϊ�ܿ�
update student set address='�ܿ�'
--2 ��ѧ����������Ϊ������ͬѧ�����Ϊ30���Ա��Ϊ��
update student set age=30 where name='����'
--3 ɾ��ѧ�������������
delete from student
--4 ɾ��ѧ����������Ϊ���ڵ�ͬѧ
delete from student where name='����'
--5 ɾ��ѧ����������>10��ͬѧ
delete from student where age>10