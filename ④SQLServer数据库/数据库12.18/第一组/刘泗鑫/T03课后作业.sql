--1 ��ѧ�����е����е�ַ������Ϊ�ܿ�

update student set saddress='�ܿ�';

--2 ��ѧ����������Ϊ������ͬѧ�����Ϊ30���Ա��Ϊ��

update student set age=30,sex='��' where sname='����';

--3 ɾ��ѧ�������������

delete from student; 

--4 ɾ��ѧ����������Ϊ���ڵ�ͬѧ

delete from student where sname='����';

--5 ɾ��ѧ����������>10��ͬѧ

delete from student where age>10;