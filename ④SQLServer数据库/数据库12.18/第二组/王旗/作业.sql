select*from student
insert into student (sid,name,age,date,address,sex)values (2,'����',18,'2017-02-23','��ˮ','��')
update student set address ='�ܿ�';
update student set age =30,sex='��' where name='����';
delete from student;
delete from student  where name='����';
delete from student where age>10;