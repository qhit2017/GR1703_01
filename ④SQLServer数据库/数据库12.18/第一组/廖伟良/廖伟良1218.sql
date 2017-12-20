insert into Student values('李明','郑州',7,'男');
insert into Student values('李磊','北京',19,'男');

update Student set address = '周口';
update Student set age = 30,sex ='男'where name = '李明';

delete from Student;

delete from Student where name = '李磊'

delete from Student where age > 10;
 
select * from Student