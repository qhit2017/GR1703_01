create table student(
id int,
name nvarchar(4),
sex nchar(1),
age int,
dizhi nvarchar(10)
)
--1 将学生表中的所有地址都更改为周口
update student set dizhi='周口'; 

--2 将学生表中姓名为李明的同学年龄改为30，性别改为男
update student set age=30,sex='男'where name='李明';

--3 删除学生表的所有数据
delete from student;

--4 删除学生表中姓名为李磊的同学
delete from student where name='李磊';

--5 删除学生表中年龄>10的同学
delete from student where age>10;
