SELECT*FROM student
--1 ��ѯȱ�ٳɼ���ѧ����ѧ�ź�����
SELECT sno,sname
FROM student
WHERE grade IS NULL 



--2��ѯÿ��רҵ��ѧ����ƽ���ɼ�

SELECT sdept ,AVG(grade)as'ƽ���ɼ�'
from student
GROUP BY sdept

--3��ѯ�����гɼ���ѧ��ѧ�ź�����

SELECT sno, sname
from student 
WHERE grade is NOT null

--4��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併������
SELECT *FROM student

ORDER BY sdept ASC,sage DESC

--5��ѯѧ��������
SELECT COUNT(*) as'����'
FROM student

--6��ѯ������Ů��������
SELECT ssex, COUNT(*) as'����'
FROM student
GROUP BY ssex

--7��ѯÿ��רҵ��ƽ���ɼ���������ɼ���������
SELECT  sdept, AVG(grade) as'ƽ���ɼ�'
FROM  student
GROUP BY sdept
ORDER BY avg (grade) DESC

--8��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ�
SELECT sdept, max(grade) as'��߳ɼ�'
FROM student
GROUP BY sdept

--9��ѯÿ��רҵ�гɼ�����ѧ���ɼ�
SELECT sdept, min(grade) as'���ɼ�'
from student
GROUP BY sdept

--10��ѯƽ���ɼ�����רҵ����
SELECT top 1
sdept
from student
GROUP BY sdept
ORDER BY avg(grade)

--11��ѯ������Ů����ƽ���ɼ�
SELECT ssex,AVG(grade) as'ƽ���ɼ�'
from student
GROUP BY ssex

--12��ѯ�ɼ�����ƽ���ɼ���ѧ�������ֺͳɼ�
--13��ѯרҵѧ����������50�˵�רҵ��
--14��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��
















