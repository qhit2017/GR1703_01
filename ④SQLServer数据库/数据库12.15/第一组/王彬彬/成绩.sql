create table exam(
	sname nvarchar(4),
	sid int,
	project nvarchar(10),
	sore int

)
select * from exam
insert into exam values('·��',001,'�쳤',100)
insert into exam values('��¡',002,'����',100)
insert into exam values('������',003,'����',100)
insert into exam values('ɽ��',004,'����',100)
insert into exam values('����',005,'������',100)
insert into exam values('�ǰ�',006,'����',100)
insert into exam values ('�ޱ�',007,'����',100)
insert into exam values('������',008,'�ȿ���',100)
insert into exam values('��³��',009,'����',100)
insert into exam values('��ƽ',010,'��Ӿ',100)
insert into exam(sname, sid,project,sore)values('���˹',011,'����',100)
insert into exam(sid,project,sname,sore)values(012,'���»�','����',100)
insert into exam(project ,sname,sore,sid)values('Ұ������','��˹',100,013)
insert into exam (sid,sname,sore,project)values(014,'�����',100,'�����ָ�')
insert into exam (sid,project,sore,sname)values(015,'����',100,'�׻���')
insert into exam (sid,sore,sname,project)values(016,80,'�޲�·��','��')
insert into exam (sid,sore,sname,project)values(017,99,'����·','����')
insert into exam(sid,sore,sname,project)values(018,70,'�˴��','ɳ����')
insert into exam(sid,sore,sname,project)values(019,90,'��','���绽��')
insert into exam(sid,sname,project,sore)values(020,'��������','�����˺�',100)