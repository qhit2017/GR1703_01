create table student(
id int,
name nvarchar(4),
sex nchar(1),
age int,
dizhi nvarchar(10)
)
--1 ��ѧ�����е����е�ַ������Ϊ�ܿ�
update student set dizhi='�ܿ�'; 

--2 ��ѧ����������Ϊ������ͬѧ�����Ϊ30���Ա��Ϊ��
update student set age=30,sex='��'where name='����';

--3 ɾ��ѧ�������������
delete from student;

--4 ɾ��ѧ����������Ϊ���ڵ�ͬѧ
delete from student where name='����';

--5 ɾ��ѧ����������>10��ͬѧ
delete from student where age>10;
