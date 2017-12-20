select*from student
insert into student (sid,name,age,date,address,sex)values (2,'李明',18,'2017-02-23','商水','男')
update student set address ='周口';
update student set age =30,sex='男' where name='李明';
delete from student;
delete from student  where name='李磊';
delete from student where age>10;