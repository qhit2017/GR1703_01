SELECT * FROM student
INSERT INTO student VALUES ('1','·','��',18,'�����',NULL)
INSERT INTO student VALUES ('2','·fei','��',18,'�����',90)
INSERT INTO student VALUES ('4','��','��',18,'�����',50)
INSERT INTO student VALUES ('3','��','��',18,'����',90)
INSERT INTO student VALUES ('5','����','��',18,'����',90)
--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
from student a
WHERE a.grade IS null

--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.sdept,AVG(a.grade) AS 'ƽ���ɼ�'
FROM student a
GROUP BY a.sdept

--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
FROM student a
WHERE a.grade IS NOT null

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT * 
from student a
ORDER BY a.sdept,a.sage DESC
 
--5.	��ѯѧ����������
SELECT COUNT(*) AS '����'
from student a

--6.	��ѯ������Ů����������
SELECT a.ssex,COUNT(*) '����'
FROM student a
GROUP BY a.ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT a.sdept,AVG(a.grade) AS 'ƽ���ɼ�'
FROM student a
GROUP BY a.sdept 
ORDER BY AVG(a.grade) DESC

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT a.sdept, MAX(a.grade) AS '�ɼ�'
FROM student a
GROUP BY a.sdept

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT a.sdept,MIN(a.grade) AS '�ɼ�'
FROM student a
GROUP BY a.sdept

--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT top 1 a.sdept
FROM student a
GROUP BY a.sdept
ORDER BY AVG(a.grade) 

--11.	��ѯ������Ů����ƽ���ɼ���
SELECT a.ssex,AVG(a.grade) AS 'ƽ���ɼ�'
FROM student a
GROUP BY a.ssex

--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
SELECT a.sname,a.grade
FROM student a
WHERE a.grade>(SELECT AVG(a.grade) AS 'ƽ���ɼ�' FROM student a GROUP BY )






--13.	��ѯרҵѧ����������50�˵�רҵ����
SELECT a.sdept,COUNT(*) AS 'רҵ����'
FROM student a 
GROUP BY a.sdept







--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����





SELECT a.sdept
FROM student a
WHERE a.sdept=(SELECT a.sage

