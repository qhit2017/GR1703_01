--������SQL���������²��� (70��)



--1.	��ѯ�ա������ʦ������
SELECT *
FROM teacher a
WHERE a.tname like'��%%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT a.ssex,COUNT(*)
from student a
GROUP BY a.ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��

SELECT *
FROM student b
WHERE b.sname LIKE'_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT max(a.score)
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
	AND c.cname='����'

--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid  AND
	 (SELECT  AVG(a.score)>60) FROM student a GROUP BY a.DEPTNO 
--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT s.sid,s.sname,c.cid,a.score
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid
--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname ,s.sname,c.cid,a.score
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid INNER JOIN
	teacher t on t.tid= c.tid 
	where c.cname ='����Ӫ��'

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������\
SELECT s.sid,s.sname
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid INNER JOIN
teacher t on t.tid= c.tid 
WHERE a.score<80
	
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname
from student s INNER JOIN SC a on s.sid=a.sid
	INNER JOIN course c on c.cid=a.cid INNER JOIN
teacher t on t.tid= c.tid 
WHERE a.score=NULL
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�

--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
--12.	��ѯ���ĵ���߷��Լ�ѧ������
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
