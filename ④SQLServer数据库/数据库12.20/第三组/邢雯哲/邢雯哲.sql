SELECT *FROM student

--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�����

SELECT a.sno,a.sname

FROM student a 

WHERE a.grade IS NULL

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ�

SELECT w.sdept,AVG (w.grade) as'�ɼ�'

FROM student w

GROUP BY w.sdept

--3.	�������гɼ���ѧ����ѧ�ź�����

SELECT s.sno,s.sname

FROM student s

WHERE s.grade is NOT NULL

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併������

SELECT *

FROM student q

ORDER BY q.sdept ,q.sage DESC 

--5.	��ѯѧ��������

SELECT COUNT(*)as '����'

FROM student h 

--6.	��ѯ������Ů��������

SELECT f.ssex, COUNT(*)as '����'
	
FROM student f

GROUP BY f.ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ���������

SELECT avg (d.grade)as 'ƽ���ɼ�'

FROM student d

GROUP BY d.sdept

ORDER BY AVG(d.grade)  DESC


--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ�

SELECT t.sdept, max (t.grade) as '��óɼ�'

FROM student t

GROUP BY t.sdept

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ�

SELECT z.sdept, min (z.grade) as '���ɼ�'

FROM student z

GROUP BY z.sdept

--10.	��ѯƽ���ɼ�����רҵ������

SELECT top 1
a.sdept
from student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) ASC   


--11.	��ѯ������Ů����ƽ���ɼ�

SELECT r.ssex, avg (r.grade) as 'ƽ���ɼ�'

FROM student r

GROUP BY r.ssex

--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ�

SELECT n.sname,n.grade

FROM student n

WHERE n.grade>avg;

--13.	��ѯרҵѧ����������50�˵�רҵ��

SELECT g.sdept

FROM student g

where g.grade>50

--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��

SELECT avg (k.grade)

FROM student k

where k.sdept='�����' 

AND k.sage<18


