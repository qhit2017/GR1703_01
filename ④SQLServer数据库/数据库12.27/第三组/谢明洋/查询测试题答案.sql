--1.	��ѯ�ա������ʦ������
SELECT t.tname
from teacher t
WHERE t.tname LIKE '��%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT s.ssex,COUNT(*) as '����'
from  student s
group BY s.ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT s.sname
from student s
WHERE s.sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(s.score) as '��߷�',MIN(s.score) as '��ͷ�',AVG(s.score) as 'ƽ����'
from  course c INNER JOIN sc s
on c.cid=s.cid
AND c.cname='����'
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid,AVG(sc.score) as 'ƽ���ɼ�'
from  student s INNER JOIN sc sc
on s.sid=sc.sid
AND sc.score>60 
--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT s.sid,s.sname,COUNT(*) as 'ѡ����',SUM(sc.score)
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c 
ON sc.cid=c.cid
GROUP BY s.sname,s.sid
--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname,s.sid,sc.score
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid INNER JOIN teacher t
ON c.tid=t.tid
AND c.cname='����Ӫ��'
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sid,sc.score,c.cname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
AND sc.score<80
GROUP BY c.cname,s.sid,sc.score 
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
AND sc.score>=0
GROUP BY c.cname
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
SELECT (sc.score-5) as '�ɼ�'
from   sc sc INNER JOIN course c
ON sc.cid=c.cid INNER JOIN teacher t
on c.tid=t.tid
AND t.tname='����'
GROUP BY c.cname,sc.score
--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
DELETE FROM course
where tid=(SELECT tid FROM teacher WHERE tname='������')
--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 sc.score as '���ĵ���߷�',s.sname
from  student s INNER JOIN sc sc
on s.sid=sc.sid INNER JOIN course c
ON sc.cid=c.cid
WHERE c.cname='����'
GROUP BY s.sname,sc.score
ORDER BY sc.score DESC
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT  c.cname,avg(s.score) as 'ƽ���ɼ�'
from course c INNER JOIN sc s
on c.cid=s.cid
GROUP BY c.cname
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���

