--1.	��ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname
FROM student a
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.sname,b.sno,b.sdept 
from student b
--3.	��ȫ��ѧ���������������䡣
SELECT c.sname,c.sage
from student c
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from student d
WHERE d.sdept='�������ѧ'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT e.sname,e.sage
FROM student e
where e.sage<20 
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.sname,f.sage,f.grade
from student f
WHERE f.sage<18
ORDER BY f.grade
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT j.grade
from student j
WHERE j.grade<50
ORDER BY j.grade desc
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT i.sname,i.sdept,i.sage
from student i
WHERE i.sage<=18 AND i.sage<=22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT h.sname,h.sdept,h.sage
from student h
WHERE h.sage<20 AND h.sage>23
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
WHERE a.sdept='IS' OR  a.sdept='MA' OR a.sdept='CS'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a
WHERE a.sdept!='IS'OR a.sdept='MA' OR a.sdept='CS'
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student a
WHERE a.sno='09102040203'
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '��%%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.sname
from student a
WHERE a.sname LIKE '��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.sname,a.sno
from student a
WHERE a.sname LIKE '_��%'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT a.sname 
from student a
WHERE a.sname NOT LIKE '��%'