

--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�����

SELECT a.sno ,a.sname 
from student a
WHERE a.grade IS NULL 

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ�

SELECT b.sdept as'רҵ��',avg(b.grade) as 'ƽ���ɼ�'
from student b
GROUP BY b.sdept

--3.	�������гɼ���ѧ����ѧ�ź�����

SELECT c.sno,c.sname
from student c
WHERE c.grade IS NOT NULL 

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併������

SELECT d.sdept,d.sage   
FROM student d
GROUP BY d.sdept,d.sage
ORDER BY d.sdept ASC ,d.sage DESC

--5.	��ѯѧ��������

SELECT COUNT(*) as '������'
from student e

--6.	��ѯ������Ů��������

SELECT f.ssex as '�Ա�',count(f.ssex) as'����'
from student f
GROUP BY f.ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ���������

SELECT g.sdept as'רҵ��',avg(g.grade) as'ƽ����'
from student g
group BY g.sdept
ORDER BY AVG(g.grade) DESC 

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ�

SELECT h.sdept,MAX(h.grade) as'��߷�'
from student h
GROUP BY h.sdept

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ�

SELECT i.sdept,MIN(i.grade) as'��ͷ�'
from student i
GROUP BY i.sdept

--**10.	��ѯƽ���ɼ�����רҵ������

SELECT top 1 j.sdept
from student j
GROUP BY j.sdept
ORDER BY avg(j.grade ) ASC 

--11.	��ѯ������Ů����ƽ���ɼ�

SELECT k.ssex,AVG(k.grade )as'ƽ����' 
from student k
GROUP BY k.ssex

--**12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ�




--**13.	��ѯרҵѧ����������50�˵�רҵ��

 


--**14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��

















