select*from xs
insert into xs values(1,'小爱同学','三班','18','女')
insert into xs values(2,'小兰','四班','17')
insert into xs values(3,'李明','五班','16','女')
insert into xs values(4,'李磊','六班','17')
update xs set nl=30,xb='男'where sname='李明'
delete from xs where sname='李磊'
delete from xs where nl>10