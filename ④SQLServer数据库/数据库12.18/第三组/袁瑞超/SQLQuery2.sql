select *from xuesheng;
insert into xuesheng  values (1,'����',18,'��','����')
insert into xuesheng  values (2,'����',19,'��','����')
insert into xuesheng  values (3,'С��',20,'Ů','����')
insert  into xuesheng values (4,'����',24,'��','����')
insert  into xuesheng values (5,'����',16,'��','�ܿ�')
insert  into xuesheng values (5,'����',9,'Ů','�ܿ�')

 update xuesheng set dizhi='�ܿ�'
 update xuesheng set age=30 where cname='����'
 delete from xuesheng;
 delete from xuesheng where cname='����';
 delete from xuesheng where age>10;