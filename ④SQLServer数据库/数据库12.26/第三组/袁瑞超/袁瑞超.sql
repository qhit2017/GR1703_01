--1����ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname
from student a


--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT b.sname,b.sno,b.sdept
from student b

--3����ȫ��ѧ�����������������ݡ�
SELECT c.sname,(2017-c.sage)as'�������'
from student c

--5����ѯJAVAϵȫ��ѧ����������
SELECT a.sname
from student a INNER join SC b on a.sno=b.sno
	INNER JOIN course c on b.cno=a.cno
	AND c.cname='JAVA'


--6����ѯ����������20�����µ�ѧ�������������䡣
select a.sname,a.sage 
from student a WHERE a.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.sno
from student s INNER JOIN SC a ON s.sno=a.sno
	AND a.grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s 
WHERE s.sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s 
WHERE s.sdept IN ('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s 
WHERE s.sdept NOT IN ('IS','MA','CS')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student
WHERE sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
from student a
WHERE a.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT sname
from student
WHERE sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT sname,sno
from student
WHERE sname LIKE'_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT sname
from student
WHERE sname NOT LIKE '��%'


--22��	��ѯѧ����������
SELECT COUNT(*)as'������'
from student



