--1.	��ѯ�ա������ʦ������
SELECT Tname
FROM Teacher  
WHERE Tname  LIKE '��%%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT ssex
FROM Student 
where ssex LIKE '��'OR ssex LIKE 'Ů'
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT sname  FROM Student where sname  LIKE '_��_'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT max(a.score)AS '��߷�',MIN(a.score ) AS '��ͷ�',avg(a.score )AS 'ƽ����'
from sc a 
GROUP BY a.sid 
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ�
SELECT AVG(b.score ) AS 'ƽ����'
from sc b
GROUP BY AVG(b.score)
