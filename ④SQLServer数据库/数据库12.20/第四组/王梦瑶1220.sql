--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno ,a.sname
from student a 
WHERE a.grade IS NULL
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.sdept, AVG(a.grade) as 'ƽ���ɼ�'  
from student a 
GROUP BY a.sdept
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
from student a 
WHERE a.grade IS NOT  NULL
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT * 
from student a
ORDER BY a.sdept ASC ,a.sage DESC
--5.	��ѯѧ����������
SELECT COUNT(*) as '����'
from student 
--6.	��ѯ������Ů����������
SELECT  a.ssex,COUNT(*) as '����'
from student a 
GROUP BY a.ssex
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ���������
SELECT a.sdept, AVG(a.grade) as 'ƽ���ɼ�'
from student a
 GROUP BY a.sdept
 ORDER  BY AVG(a.grade)DESC 
 --8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
 SELECT  a.sdept,MAX(a.grade) AS '���ѧ���ɼ�'
 from student a 
 GROUP BY a.sdept
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT a.sdept, MIN(a.grade)as '���ѧ���ɼ�' 
from student a 
GROUP BY a.sdept
--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT TOP 1
a.sdept
from student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) ASC 

--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.ssex,AVG(a.grade) AS 'ƽ���ɼ�' 
from student a 
GROUP BY a.ssex
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���(����)
SELECT a.sname,a.grade 
from student a 
WHERE AVG(a.grade) <a.grade 


--13.	��ѯרҵѧ����������50�˵�רҵ����(����)
SELECT a.sdept
from student a 
GROUP BY a.sdept
WHILE count(*)>50

--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��(����)

select AVG(a.grade),a.sdept 
from student a
WHILE a.sdept='�����'and a.sage<18


  



