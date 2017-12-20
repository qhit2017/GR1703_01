insert into student values(1,'小明','男',9,'山东');
insert into student values (2,'李明','女',18,'甘肃');
insert into student values (3,'李磊','男',17,'江苏');
insert into student values (4,'小兰','女',8,'上海');
select * from student
--1 将学生表中的所有地址都更改为周口
update student set address='周口'
--2 将学生表中姓名为李明的同学年龄改为30，性别改为男
update student set age=30 where name='李明'
--3 删除学生表的所有数据
delete from student
--4 删除学生表中姓名为李磊的同学
delete from student where name='李磊'
--5 删除学生表中年龄>10的同学
delete from student where age>10