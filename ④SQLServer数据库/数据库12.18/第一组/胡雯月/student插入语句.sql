select*from student
insert into student values(001,'����',18,'Ů','����ʡ������')
insert into student values(002,'����',19,'��','����ʡ������')
insert into student values(003,'����',20,'��','����ʡ������')
insert into student values(004,'����',25,'Ů','����ʡƽ��ɽ��')

update student set address='�ܿ���' where sid=001 or sid=002 or sid=003 or sid=004

update student set age=30 ,sex='��' where sname='����'

delete from student 

delete from student where sname='����'

delete from student where age>10
