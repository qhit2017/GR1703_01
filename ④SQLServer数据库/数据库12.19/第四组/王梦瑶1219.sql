--1.	��ѯȫ��ѧ����ѧ����������
SELECT  a.sdept, a.sname 
from student a 
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��

SELECT i.sname,i.sno,i.sdept 
from student i

--3.	��ȫ��ѧ���������������䡣
SELECT a.sname,a.sage
from student a

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������

SELECT *
FROM student a
WHERE a.sdept='�������ѧ'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT a.sname,a.sage
FROM student a
where a.sage<20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT a.sname,a.sage,a.grade
from student a 
WHERE a.sage<18
ORDER  BY a.grade 
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT a.sno
from student  a
WHERE a.grade<60
ORDER  BY a.grade DESC
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT a.sname,a.sdept,a.sage
from student a
where a.sage>=18 AND a.sage<=22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT a.sname,a.sdept,a.sage
from student a
WHERE a.sage<20 OR a.sage>23
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a 
WHERE a.sdept='is' OR a.sdept='ma' OR a.sdept='cs' 
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex
from student a 
WHERE a.sdept!='��Ϣϵ'OR a.sdept!='��ѧϵ' OR a.sdept!='�������ѧϵ'
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student a 
WHERE a.sno='09102040203'
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
FROM student a 
WHERE a.sname LIKE '��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT *
FROM student a 
WHERE a.sname LIKE '��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.sname,a.sno
from student a 
WHERE a.sname LIKE '_��%'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT a.sname
FROM student a 
where a.sname NOT LIKE '��%'
