create table exam(
	sname nvarchar(4),
	sid int,
	project nvarchar(10),
	sore int

)
select * from exam
insert into exam values('路飞',001,'伸长',100)
insert into exam values('索隆',002,'剑术',100)
insert into exam values('乌索普',003,'撒谎',100)
insert into exam values('山治',004,'厨艺',100)
insert into exam values('娜美',005,'航海术',100)
insert into exam values('乔巴',006,'卖萌',100)
insert into exam values ('罗宾',007,'腹黑',100)
insert into exam values('弗兰奇',008,'喝可乐',100)
insert into exam values('布鲁克',009,'吓人',100)
insert into exam values('甚平',010,'游泳',100)
insert into exam(sname, sid,project,sore)values('香克斯',011,'面子',100)
insert into exam(sid,project,sname,sore)values(012,'爱德华','儿子',100)
insert into exam(project ,sname,sore,sid)values('野外生存','艾斯',100,013)
insert into exam (sid,sname,sore,project)values(014,'马尔科',100,'生命恢复')
insert into exam (sid,project,sore,sname)values(015,'剑术',100,'米霍克')
insert into exam (sid,sore,sname,project)values(016,80,'罗布路奇','格斗')
insert into exam (sid,sore,sname,project)values(017,99,'艾尼路','发电')
insert into exam(sid,sore,sname,project)values(018,70,'克达尔','沙尘暴')
insert into exam(sid,sore,sname,project)values(019,90,'龙','呼风唤雨')
insert into exam(sid,sname,project,sore)values(020,'巴索罗缪','吸收伤害',100)