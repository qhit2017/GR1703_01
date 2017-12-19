select*from student
insert into student(sid ,sname, age, date) values ('123456', '张三' ,'17' ,'2017-03-23');
insert into student(sid ,sname, age, date) values ('123457', '李四' ,'17' ,'2017-03-23');
insert into student(sid,age, date)values ('123458','18','2017-03-23');
insert into student(age, sname,sid)values('19','王五','123456');
insert into student(sid,sname,age)values('12313145','王六','20');
insert into student(sid,sname ,age)values('121515','王麻','19');
insert into student(sname) values('张飞');
insert into student(sid) values ('2142141');
insert into student(sid ,sname, age, date) values ('1245627', '刘备' ,'19' ,'2017-03-18');
insert into student(sid,sname, age,date)values('143523','关羽','17','2017-23-17');
insert into student select *from student;
