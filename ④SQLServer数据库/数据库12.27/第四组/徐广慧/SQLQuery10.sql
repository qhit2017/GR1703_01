SELECT *FROM Teacher
SELECT *FROM sc
SELECT *FROM Student
SELECT *FROM course




--1.	��ѯ�ա������ʦ������
select *
from Teacher a
WHERE a.Tname LIKE '��%'



--2.	��ѯ������Ů���ֱ��ж�����
SELECT a.ssex,COUNT(*) 
from student a
GROUP BY a.ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
from student a
where a.sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score)as'��߷�',MIN(a.score)'��ͷ�',AVG(a.score)'ƽ����' 
from sc a INNER JOIN course b ON a.cid=b.cid
where b.cname='����'


--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���

SELECT b.sid,AVG(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid
group by b.sid
HAVING AVG(b.score)>60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
select a.sid,a.sname,COUNT(c.cname) ,SUM(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid
GROUP BY b.sid


--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT a.sname,b.score,d.tname
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
AND d.tname='����Ӫ��'
GROUP BY b.score

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
select DISTINCT  a.sid,a.sname
from student a INNER JOIN sc b ON a.sid=b.sid
WHERE b.score<80;



--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT a.sid,a.sname
from student a INNER JOIN sc b ON a.sid=b.sid
WHERE b.score is NULL




--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
SELECT a.score-5
from sc a INNER JOIN course b on a.cid=b.cid INNER JOIN  teacher c ON  b.tid=c.tid
WHERE c.tname='����'

--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��

--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 MAX(c.cname) ,a.sname,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
where c.cname='����'
GROUP BY a.sname,b.score
ORDER BY b.score  desc


--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT AVG(b.score) 
from course a INNER JOIN sc b ON a.cid=b.cid
GROUP BY a.cname


--14.	��ѯÿ�ſ�Ŀ�ļ�����
SELECT  
from course a INNER JOIN sc b ON a.cid=b.cid
WHERE b.score>60
GROUP BY a.cname





--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
SELECT TOP 3 a.sname,b.score,d.tname
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
WHERE c.cname='Ӣ��'
ORDER BY b.score DESC 



--16.	��ѯÿ�ſο��Ե�����


SELECT COUNT(*) 
from course a INNER JOIN sc b ON a.cid=b.cid
GROUP BY a.cname


--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
SELECT a.sid,a.sname,AVG(b.score) 
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
GROUP BY a.sid,a.sname
HAVING AVG(b.score)>85 

--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
SELECT a.sname,a.ssex
from student a 
WHERE a.sage=a.sage and  a.ssex=a.ssex




--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
SELECT a.sname,a.ssex,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON b.cid=c.cid
WHERE c.cname='java����' AND  b.score<=90AND b.score>=70 AND a.ssex='Ů'

--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
SELECT  TOP 2 a.sname,b.score
from student a INNER JOIN sc b ON a.sid=b.sid INNER JOIN course c ON c.cid=b.cid INNER JOIN teacher d ON d.tid=c.tid 
WHERE d.tname='����'
ORDER BY  b.score DESC 

