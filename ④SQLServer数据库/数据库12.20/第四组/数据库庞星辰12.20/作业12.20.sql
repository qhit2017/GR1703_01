INSERT INTO student values('135','С��','��',18,'�����',120)
INSERT INTO student values('136','С��','��',18,'�����',110)
INSERT INTO student values('137','С��','��',18,'�����',99)
INSERT INTO student values('138','С��','��',18,'�����',12)
INSERT INTO student values('139','С��','��',18,'�����',10)



--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
from student a
WHERE a.grade IS NULL 
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.sdept, AVG(a.grade) as 'ƽ����' 
from student a
GROUP BY a.sdept
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
from student a
WHERE a.grade  is NOT NULL 
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT * 
from student a
ORDER BY a.sdept , a.sage DESC 
--5.	��ѯѧ����������
SELECT COUNT(*) as '������'
from student 
--6.	��ѯ������Ů����������
select a.ssex, COUNT(a.ssex) as '����' 
from student a
GROUP BY a.ssex
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT a.sdept,AVG(a.grade) as 'ƽ���ɼ�' 
from student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) DESC 
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT a.sdept,MAX(a.grade) as '��õĳɼ�' 
from student a
GROUP BY a.sdept
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT a.sdept,MIN(a.grade) as '���ĳɼ�'
from student a
GROUP BY a.sdept
--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT  top 1
a.sdept
from student a
GROUP BY a.sdept 
ORDER BY AVG(a.grade)
--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.ssex,AVG(a.grade) as 'ƽ����'
from student a
group BY a.ssex
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
  
   


--13.	��ѯרҵѧ����������50�˵�רҵ����


--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����

