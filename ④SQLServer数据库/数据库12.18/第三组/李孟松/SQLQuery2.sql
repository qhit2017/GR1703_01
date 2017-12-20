select *from student

insert into student values(1,'小明','男',20,'深圳');
insert into student values(2,'小红','女',18,'上海');
insert into student values(3,'小绿','男',25,'北京');
insert into student values(4,'小紫','女',18,'周口');
insert into student values(5,'小橙','男',9,'浙江');
insert into student values(6,'小蓝','男',23,'杭州');
insert into student values(7,'小黑','男',22,'福建');


update student set address='周口';

update student set age=30,sex='男' where name='李明';

delete from student;

delete from student where name='李磊';

delete from student where age>10;

