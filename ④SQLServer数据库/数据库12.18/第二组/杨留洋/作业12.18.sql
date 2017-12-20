create table  student(
id int,
name nvarchar(6),
sex nchar(1),
age int,
dizhi nvarchar(50)
)
update student set dizhi='周口'; 

update student set age=30,sex='男'where name='李四';

delete from student;


delete from student where name='王二';

delete from student where age>10;
