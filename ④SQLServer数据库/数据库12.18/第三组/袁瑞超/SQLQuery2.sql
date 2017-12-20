select *from xuesheng;
insert into xuesheng  values (1,'王军',18,'男','南阳')
insert into xuesheng  values (2,'李明',19,'男','淮阳')
insert into xuesheng  values (3,'小红',20,'女','商丘')
insert  into xuesheng values (4,'赵云',24,'男','扶沟')
insert  into xuesheng values (5,'李磊',16,'男','周口')
insert  into xuesheng values (5,'王静',9,'女','周口')

 update xuesheng set dizhi='周口'
 update xuesheng set age=30 where cname='李明'
 delete from xuesheng;
 delete from xuesheng where cname='李磊';
 delete from xuesheng where age>10;