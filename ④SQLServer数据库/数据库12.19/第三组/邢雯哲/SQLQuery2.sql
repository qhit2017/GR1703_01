
SELECT * FROM student

--1.	��ѯȫ��ѧ����ѧ��������

SELECT s.sno,s.sname

FROM student s


--2.	��ѯȫ��ѧ����������ѧ�š�רҵ

SELECT t.sname,t.sno,t.sdept

FROM student t


--3.	��ȫ��ѧ����������������

SELECT l.sname,l.sage

FROM student l


--4.	��ѯ���������ѧ��רҵȫ��ѧ��������

SELECT *

FROM student r

WHERE r.sdept='�������ѧ'


--5.	��ѯ����������20�����µ�ѧ��������������

SELECT e.sname,e.sage

FROM student e

WHERE e.sage<20


--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����

SELECT  q.sname,q.sage,q.grade

FROM student q

where q.sage<18 

ORDER BY q.grade


--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������

SELECT p.sno

FROM student p

WHERE p.grade<60

ORDER BY p.grade desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������

SELECT n.sname,n.sdept,n.sage

FROM student n

WHERE (n.sage>=18 and n.sage<=22)


--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ������

SELECT i.sname,i.sdept,i.sage

FROM student i

WHERE (i.sage<20 or i.sage>23)

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

SELECT z.sname,z.ssex

FROM student z

WHERE z.sdept='��Ϣϵ' OR z.sdept='��ѧϵ' or z.sdept='�������ѧ'


--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�

SELECT x.sname,x.ssex

FROM student x

where x.sdept!='��Ϣϵ'and x.sdept!='��ѧϵ'and x.sdept!='�������ѧ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ���

 SELECT v.sname,v.ssex,v.sage,v.sdept,v.grade
 
FROM student v

where v.sno=2

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

SELECT w.sname,w.sno,w.ssex

FROM student w

WHERE w.sname LIKE'��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������

SELECT f.sname

FROM student f

where f.sname LIKE'��%'


--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��

SELECT m.sname,m.sno

FROM student m

where m.sname LIKE'%��%'

--16.	��ѯ���в��ա��¡���ѧ������

SELECT t.sname

FROM student t

WHERE t.sname not LIKE '��%'
