SELECT*FROM
Student
--��SQL���������е����ѯ��


4.	--��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
5.	--��ѯѧ����������
6.	--��ѯ������Ů����������
7.	--��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
8.	--��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
9.	--��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
10.	--��ѯƽ���ɼ�����רҵ�����֡�
11.	--��ѯ������Ů����ƽ���ɼ���
12.	--��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
13.	--��ѯרҵѧ����������50�˵�רҵ����
14.	--��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
INSERT INTO Student VALUES(1,'С��','��',18,'����',98);
INSERT INTO Student VALUES(1,'Сs','��',18,'�����');
INSERT INTO Student VALUES(1,'Сx','Ů',18,'����');
INSERT INTO Student VALUES(1,'Сr','��',18,'����',35);
INSERT INTO Student VALUES(1,'Сw','��',18,'����',55);
INSERT INTO Student VALUES(1,'Сe','��',18,'����');
INSERT INTO Student VALUES(1,'Сj','Ů',18,'����',99);
INSERT INTO Student VALUES(1,'Сt','��',18,'����',88);
INSERT INTO Student VALUES(1,'Сy','Ů',18,'��ѧ',77);
INSERT INTO Student VALUES(1,'Сz','��',18,'����',88);
INSERT INTO Student VALUES(1,'Сl','��',18,'���',65);
INSERT INTO Student VALUES(1,'Сu','��',18,'����',75);
INSERT INTO Student VALUES(1,'Сi','��',18,'����',15);
--1.	--��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.sno ,a.sname
from Student a
WHERE grade is NULL


--	��ѯÿ��רҵ��ѧ����ƽ���ɼ�
SELECT b.Sdept,AVG(b.Grade) as 'ƽ��ֵ'
from student b
GROUP BY b.Sdept
--�������гɼ���ѧ����ѧ�ź�������
SELECT a.sno,a.sname
from Student a
WHERE a.grade IS NOT NULL

--��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student d
ORDER by d.Sdept ASC ,d.Sage desc
	--��ѯѧ����������
SELECT COUNT (*)
from Student b
	--��ѯ������Ů����������
SELECT f.Ssex,COUNT(*) as'����'
from student f
GROUP BY f.Ssex
--��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT g.Sdept,AVG(g.Grade)as 'ƽ���ɼ�'
from student g
GROUP BY g.Sdept
ORDER BY AVG(g.Grade) DESC

--	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT h.Sdept,MAX(h.Grade)
from student h
GROUP BY h.Sdept

	--��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT c.sdept,MIN(c.grade)
from Student c
GROUP BY c.sdept

--��ѯƽ���ɼ�����רҵ�����֡�
SELECT j.Sdept,AVG(j.grade) as 'ƽ���ɼ�'
from student j
GROUP BY j.Sdept
