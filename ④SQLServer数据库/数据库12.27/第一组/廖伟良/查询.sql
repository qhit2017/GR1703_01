--1.��ѯ�ա������ʦ������
select Tname 
from Teacher 
where Tname like '��%'

--2.��ѯ������Ů���ֱ��ж�����
select ssex,COUNT(*) as'����'
from Student
group by ssex

--3.��ѯѧ���еڶ��������ĵ�����Щ��
select sname from Student where sname like'_��%'

--4.��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
select MAX(score)as'��߷�',MIN(score)as'��ͷ�',AVG(score) as'ƽ����'
from SC sc inner join Course c on sc.cid=c.CID
where c.Cname='����'

--5.��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
select sid,AVG(score) as'ƽ���ɼ�'
from SC
group by sid
having AVG(score)>60

--6.��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
select s.sid,s.sname,COUNT(*) as'ѡ����',SUM(score)as'�ܳɼ�'
from SC sc inner join Student s on s.sid =sc.sid
group by s.sid,s.sname

--7.��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
select t.Tname,s.sname,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
and c.Cname='����Ӫ��'

--8.��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
select s.sid,s.sname
from SC inner join Student s on sc.sid=s.sid
group by s.sid,s.sname
having MAX(sc.score)<80

--9.��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
select s.sid,s.sname
from SC inner join Student s on sc.sid=s.sid
group by s.sid,s.sname
having COUNT(*)<(select count(*)from course)

--10.�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
update SC set score = score-5
where cid in(select c.cid
from teacher t inner join course c on t.tid=c.tid
and t.tname='����')

--11.ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
delete from SC where cid in (select distinct sc.cid
from teacher t inner join course c on t.tid=c.tid
And T.Tname='������')

--12.��ѯ���ĵ���߷��Լ�ѧ������
select top 1(sc.score)as'��߷�',s.sname
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on sc.sid=s.sid
and c.Cname='����'
order by sc.score desc

--13.��ѯÿ�ſ�Ŀ��ƽ���ɼ�
select c.Cname,AVG(sc.score) as'����'
from SC sc inner join Course c on sc.cid=c.CID
group by c.Cname

--14.��ѯÿ�ſ�Ŀ�ļ�����
select sc.cid,COUNT(*)*100/(select count(*) from SC a where a.cid=SC.cid)
from SC inner join Course c on sc.cid=c.CID
AND sc.score>=60
group by sc.cid

--15.��ѯӢ��ǰ������ѧ����������������ʦ����
select top 3 s.sname,sc.score,t.TID
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
and c.Cname='Ӣ��'
order by sc.score desc

--16.��ѯÿ�ſο��Ե�����
select cid,COUNT(*) as'����'
from SC  
group by cid

--17.��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
select s.sid,s.sname,AVG(sc.score) as'����'
from SC sc inner join Student s on s.sid =sc.sid
group by s.sid,s.sname
having AVG(sc.score)>85

--18.��ѯ��ͬ��������ͬ�Ա������Щ��
select * 
from Student s where CAST(s.sage as nvarchar)+s.ssex in(
select CAST(s.sage as nvarchar)+s.ssex
from Student s
group by s.sage,s.ssex
having COUNT(*)>=2)
order by s.sage,s.ssex

--19.��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
select s.sname,s.ssex,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
and c.Cname='java����'and sc.score between 70 and 90
and s.ssex='Ů'

--20.��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
select top 2 s.sname,sc.score
from SC sc inner join Course c on sc.cid=c.CID
inner join Student s on s.sid =sc.sid
inner join Teacher t on c.TID=t.TID
And T.Tname='����'
order by sc.score desc