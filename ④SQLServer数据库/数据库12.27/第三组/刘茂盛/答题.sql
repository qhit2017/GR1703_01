SELECT *
from student

--1.	��ѯ�ա������ʦ������
SELECT t.tname
from teacher t
where t.tname LIKE '��%'

--2.	��ѯ������Ů���ֱ��ж�����
SELECT COUNT(*)
from student
GROUP BY ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT sname
from student
WHERE sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score),MIN(a.score),AVG(a.score)   
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	AND c.cname='����'


 
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid,AVG(a.score)
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	group BY s.sid
	HAVING AVG(a.score) >60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT s.sid,s.sname,COUNT(c.cid),SUM(a.score)
from student s LEFT JOIN sc a on s.sid=a.sid
	LEFT JOIN course c on c.cid=a.cid
	GROUP BY s.sid,s.sname
	

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname,s.sname,a.score
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	INNER JOIN teacher t on t.tid=c.tid
	AND c.cname='����Ӫ��'

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sname
from student s INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid 
	AND 80<ALL(SELECT a.score from student b INNER JOIN sc a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid AND b.sid=s.sid) 
	GROUP BY s.sid,s.sname
	
	
	
	

--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname
from student s LEFT JOIN sc a on s.sid=a.sid
	LEFT JOIN course c on c.cid=a.cid
	AND c.cname =all(SELECT c.cname from course c )
	GROUP BY s.sid,s.sname
	
	

--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�


--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
--12.	��ѯ���ĵ���߷��Լ�ѧ������
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�

--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
SELECT s.sname
from student s
WHERE s.sage in(SELECT a.sage from student a GROUP BY a.sage)
AND s.ssex IN (SELECT b.ssex from student b GROUP BY b.sage,b.ssex)



--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���

select s.sname,s.ssex,a.score
from student s inner join sc a on s.sid=a.sid
	inner join course c on c.cid=a.cid
	and c.cname='java����'
	and s.ssex='Ů'
	and a.score BETWEEN 70 and 90

--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���

Select top 2 s.sname,t.tname, (a.score)
From student s inner join sc a on s.sid=a.sid 
	inner join course c on c. cid=a.cid 
	inner join teacher t on t.tid= c.tid  
	and t.tname='����' 
	order by a.score desc
