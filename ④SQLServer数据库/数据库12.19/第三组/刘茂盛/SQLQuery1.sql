INSERT INTO student VALUES('001','����','��',18,'�������ѧϵ',80);
INSERT INTO student VALUES('002','����','��',21,'����ϵ',78);
INSERT INTO student VALUES('003','�','Ů',20,'��ѧϵ',70);
INSERT INTO student VALUES('004','����','��',19,'����һ�廯ϵ',90);
INSERT INTO student VALUES('005','���»�','��',19,'����ϵ',92);
INSERT INTO student VALUES('006','�׽���','��',18,'����ϵ',96);
INSERT INTO student VALUES('007','����','Ů',20,'����ϵ',80);
INSERT INTO student VALUES('008','����','��',19,'�������ѧϵ',70);
INSERT INTO student VALUES('009','���ĵ�','Ů',20,'��ѧϵ',55);
INSERT INTO student VALUES('010','����','��',22,'�������ѧ',50);
INSERT INTO student VALUES('011','ʷ�ٷ�','��',23,'��Ϣϵ',30);


SELECT *
FROM student 

--1.	��ѯȫ��ѧ����ѧ��������

SELECT a.sno,a.sname
from student a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ

SELECT b.sname,b.sno,b.sdept
from student b

--3.	��ȫ��ѧ����������������

SELECT c.sname ,c.sage 
from student c

--4.	��ѯ���������ѧ��רҵȫ��ѧ��������

SELECT *
FROM student d
WHERE d.sdept='�������ѧϵ'

--5.	��ѯ����������20�����µ�ѧ��������������

SELECT e.sname,e.sage 
FROM student e
where e.sage <20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����

SELECT f.sname,f.sage ,f.sgrade
from student f
WHERE f.sage<18
ORDER BY f.sgrade DESC 

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������

SELECT g.sno 
from student g
WHERE g.sgrade<60
ORDER BY g.sgrade desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������

SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage>=18 AND h.sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ������

SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<20 OR i.sage>23

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

SELECT j.sname,j.ssex
FROM student j
where j.sdept='��Ϣϵ' OR j.sdept ='��ѧϵ' OR j.sdept='�������ѧϵ'

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�

SELECT k.sname,k.ssex
from student k
WHERE k.sdept!='��Ϣϵ' AND k.sdept!='��ѧϵ' AND k.sdept!='�������ѧϵ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ���

SELECT *
FROM student l
WHERE l.sno='09102040203'

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

SELECT m.sname,m.sno,m.ssex
from student m
WHERE m.sname LIKE '��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������

SELECT n.sname
from student n
WHERE n.sname LIKE '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��

SELECT o.sname,o.sno 
from student o
WHERE o.sname LIKE '_��%'

--16.	��ѯ���в��ա��¡���ѧ������

SELECT p.sname
from student p
WHERE p.sname NOT  LIKE '��%'

--���ԣ�

INSERT INTO student VALUES ('001','����','��',18,'ʦ��',20)
--�ᱨ���ֶΣ�sno��Ϊ�����������ظ�

INSERT INTO student VALUES ('012',null,'��',18,'ʦ��',20)
--�ᱨ�� ��������Ϊ��

INSERT INTO student(sno,sname,sage,sdept,sgrade) VALUES ('012','����',18,'ʦ��',20)
--���ᱨ����ѯ����ѧ��Ϊ 012 ��ѧ���Ա�Ĭ��Ϊ ��

SELECT * from student 
DELETE FROM  student WHERE sno ='012'






