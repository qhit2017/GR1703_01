
--1.	��ѯ�ա������ʦ������

SELECT tname 
from Teacher 
WHERE tname LIKE '��%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT ssex,COUNT(*) 
from student0
GROUP BY ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
from student0 
WHERE sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score) AS '��߷�',MIN(a.score)  AS '��ͷ�', AVG(a.score) AS 'ƽ����' 
from SC a INNER JOIN Course b ON a.cid=b.Cid
WHERE b.Cname ='����'
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT a.sid,AVG(a.score) 
from SC  a
GROUP BY a.sid
HAVING AVG(a.score)>60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT a.sid,a.sname,count(c.Cname) AS 'ѡ����',sum(b.score) AS '�ܳɼ�'
from student0 a INNER JOIN SC b ON a.sid =b.sid INNER JOIN  Course c ON c.cid=b.cid 
group BY a.sid,a.sname

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT d.tname,a.sname,b.score
from student0  a INNER JOIN SC  b ON a.sid=b.sid INNER JOIN Course c ON c.Cid =b.cid 
INNER JOIN  Teacher d ON d.Tid=c.Tid
WHERE c.Cname='����Ӫ��'
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT DISTINCT a.sid,a.sname
from student0 a INNER JOIN SC b ON a.sid=b.sid 
WHERE b.score<80
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT a.sid,a.sname
from student0 a LEFT JOIN SC b ON a.sid=b.sid 
WHERE b.score IS NULL




--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
UPDATE SC SET score=score-5 WHERE cid=2
--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
DELETE FROM  SC  WHERE   cid IN ('3','4')
--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 b.score ,a.sname 
from student0 a INNER JOIN SC b ON a.sid=b.sid INNER JOIN Course c ON c.Cid =c.Cid
WHERE c.Cname='����'
ORDER BY b.score DESC 
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT b.Cname,AVG(a.score) 
from SC  a INNER JOIN Course b ON a.cid=b.Cid 
GROUP BY b.Cname
--14.	��ѯÿ�ſ�Ŀ�ļ�����
SELECT  (SELECT COUNT(*)   from Course  a INNER JOIN SC b ON a.Cid=b.cid WHERE b.score>60 GROUP BY )*100/COUNT(*) 
from Course
GROUP BY Course.Cname
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
SELECT TOP 3 d.sname ,b.score,c.tname
from Course a INNER join SC b ON a.Cid =b.cid INNER JOIN Teacher c ON c.Tid=a.Tid INNER JOIN student0 d ON b.sid=d.sid
WHERE a.Cname='Ӣ��'
ORDER BY b.score DESC 
--16.	��ѯÿ�ſο��Ե�����
SELECT b.Cname,COUNT(*) AS '����'
from SC a INNER JOIN Course b ON a.cid=b.Cid 
WHERE a.score IS NOT NULL 
GROUP BY b.Cname
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
SELECT b.sid ,b.sname,AVG(a.score) AS 'ƽ���ɼ�'
from  SC a INNER JOIN student0 b ON a.sid=b.sid
GROUP BY b.sid ,b.sname 
HAVING AVG(a.score) >85
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
SELECT age,ssex,sname 
from student
GROUP BY age,ssex,sname 
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
SELECT  c.sname,c.ssex,a.score
from SC a INNER JOIN Course b ON b.Cid=a.cid INNER JOIN student c ON c.sid=a.sid
WHERE c.ssex='Ů' AND b.Cname='java����'AND a.score  BETWEEN 70 AND 90
20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���

