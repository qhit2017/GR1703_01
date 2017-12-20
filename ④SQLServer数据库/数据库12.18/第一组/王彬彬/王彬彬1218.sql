--1 将学生表中的所有地址都更改为周口
--2 将学生表中姓名为李明的同学年龄改为30，性别改为男
--3 删除学生表的所有数据
--4 删除学生表中姓名为李磊的同学
--5 删除学生表中年龄>10的同学

drop table student3
create table student3(
	sid int,
	sname nvarchar(10),
	saddress nvarchar(20),
	sex nchar(1),
	sage int
)
select * from student3
insert into student3 values(001,'王彬彬','洛阳','男',20)
update student3 set saddress='周口'
update student3 set sage=30,sex='男' where sname='李明'
delete from student3
delete from student3 where sname='李磊'
delete from student3 where sage>10