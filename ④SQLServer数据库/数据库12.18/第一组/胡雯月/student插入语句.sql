select*from student
insert into student values(001,'李明',18,'女','河南省信阳市')
insert into student values(002,'张三',19,'男','河南省洛阳市')
insert into student values(003,'李四',20,'男','河南省新乡市')
insert into student values(004,'李磊',25,'女','河南省平顶山市')

update student set address='周口市' where sid=001 or sid=002 or sid=003 or sid=004

update student set age=30 ,sex='男' where sname='李明'

delete from student 

delete from student where sname='李磊'

delete from student where age>10
