select *from student
--我手动创建的表
insert into student values(1,'张三','男',20,'上海');
insert into student values(2,'小红','女',18,'上海');
insert into student values(3,'李四','男',25,'北京');
insert into student values(4,'王五','男',24,'周口');
insert into student values(5,'大头','男',9,'浙江');
insert into student values(6,'李磊','男',23,'广州');
insert into student values(7,'李明','男',22,'福建');

--第一题：
update student set address='周口';

--第二题：
update student set age=30,sex='男' where name='李明';

--第三题：
delete from student;

--第四题：
delete from student where name='李磊';

--第五题：
delete from student where age>10;

