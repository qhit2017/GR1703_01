INSERT INTO student VALUES('001','��3','��',18,'�������ѧϵ',80);
INSERT INTO student VALUES('002','��4','��',21,'����ϵ',78);
INSERT INTO student VALUES('003','����','Ů',20,'��ѧϵ',70);
INSERT INTO student VALUES('004','����','��',19,'����һ�廯ϵ',90);
INSERT INTO student VALUES('005','���»�','��',19,'����ϵ',92);
INSERT INTO student VALUES('006','����','��',18,'����ϵ',96);
INSERT INTO student VALUES('007','����','Ů',20,'����ϵ',80);
INSERT INTO student VALUES('008','����','��',19,'�������ѧϵ',70);
INSERT INTO student VALUES('009','���ĵ�','Ů',20,'��ѧϵ',55);
INSERT INTO student VALUES('010','����','��',22,'�������ѧ',50);
INSERT INTO student VALUES('011','ʷ�ٷ�','��',23,'��Ϣϵ',30);


SELECT *
FROM student 



SELECT a.sno,a.sname
from student a



SELECT b.sname,b.sno,b.sdept
from student b



SELECT c.sname ,c.sage 
from student c


SELECT *
FROM student d
WHERE d.sdept='�������ѧϵ'



SELECT e.sname,e.sage 
FROM student e
where e.sage <20



SELECT f.sname,f.sage ,f.sgrade
from student f
WHERE f.sage<18
ORDER BY f.sgrade DESC 



SELECT g.sno 
from student g
WHERE g.sgrade<60
ORDER BY g.sgrade desc



SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage>=18 AND h.sage<=22



SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<20 OR i.sage>23



SELECT j.sname,j.ssex
FROM student j
where j.sdept='��Ϣϵ' OR j.sdept ='��ѧϵ' OR j.sdept='�������ѧϵ'



SELECT k.sname,k.ssex
from student k
WHERE k.sdept!='��Ϣϵ' AND k.sdept!='��ѧϵ' AND k.sdept!='�������ѧϵ'



SELECT *
FROM student l
WHERE l.sno='09102040203'



SELECT m.sname,m.sno,m.ssex
from student m
WHERE m.sname LIKE '��%'


SELECT n.sname
from student n
WHERE n.sname LIKE '��__'



SELECT o.sname,o.sno 
from student o
WHERE o.sname LIKE '_��%'



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






