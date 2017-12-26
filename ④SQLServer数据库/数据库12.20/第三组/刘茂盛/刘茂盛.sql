SELECT *
FROM student 

INSERT INTO student values('001','����','��',18,'�����Ӧ��',80);
INSERT INTO student values('002','������','Ů',21,'�����Ӧ��',23);
INSERT INTO student values('003','��������','��',23,'����',68);
INSERT INTO student values('004','��������','Ů',21,'�����Ӧ��',54);
INSERT INTO student values('005','�����޶�','��',17,'�����Ӧ��',80);
INSERT INTO student values('006','����ɳ��','Ů',18,'�����Ӧ��',78);
INSERT INTO student values('007','������','��',19,'�����',96);
INSERT INTO student VALUES('008','����','��',18,'�������ѧϵ',80);
INSERT INTO student VALUES('009','����','��',21,'����ϵ',78);
INSERT INTO student VALUES('0010','�','Ů',20,'��ѧϵ',70);
INSERT INTO student VALUES('011','����','��',19,'����һ�廯ϵ',90);
INSERT INTO student VALUES('012','���»�','��',19,'����ϵ',92);
INSERT INTO student VALUES('013','�׽���','��',18,'����ϵ',96);
INSERT INTO student VALUES('014','����','Ů',20,'����ϵ',80);
INSERT INTO student VALUES('015','����','��',19,'�������ѧϵ',70);
INSERT INTO student VALUES('016','���ĵ�','Ů',20,'��ѧϵ',55);
INSERT INTO student VALUES('017','����','��',22,'�������ѧ',50);
INSERT INTO student VALUES('018','ʷ�ٷ�','��',23,'��Ϣϵ',30);

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
select l.sname,l.grade
FROM student l
where l.grade>(select avg(m.grade) from student m)


--**13.	��ѯרҵѧ����������50�˵�רҵ��

select p.sdept
from student p
group by p.sdept
having count(p.sno)>50


--**14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��


SELECT AVG(n.grade),n.sdept
from student n
WHERE n.sdept='�����' and n.sage<18
GROUP BY n.sdept
















