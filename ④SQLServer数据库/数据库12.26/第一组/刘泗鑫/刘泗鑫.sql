--1����ѯȫ��ѧ����ѧ����������
SELECT s.sno,s.sname
FROM student s

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.sname,s.sno,s.sdept
from student s

--3����ȫ��ѧ�����������������ݡ�
--        ��

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.sno
from student s
WHERE s.sdept IS NOT NULL

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
FROM student s
WHERE s.sdept = 'CS'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT s.sname,s.ssex
from student s
WHERE s.sage < 20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.sno
from student s INNER JOIN sc c ON s.sno = c.sno
AND c.grade <60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage NOT BETWEEN 19 AND 22

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT s.sname,s.ssex
from student s
WHERE s.sdept IN ('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT s.sname,s.ssex
FROM student s
WHERE s.sdept NOT IN ('IS','MA','cs')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM student s
WHERE s.sno = 09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT  s.sname,s.sno,s.ssex
from student s
WHERE s.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT s.sname
from student s
WHERE s.sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT s.sname,s.sno
from student s
WHERE s.sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT s.sname
from student s
WHERE s.sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.cno,c.ccredit
from course c 
WHERE c.cname = 'DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT s.sno,c.cno
from student s INNER JOIN sc a ON s.sno = a.sno INNER JOIN course c ON a.cno = c.cno
WHERE a.grade IS NULL AND a.grade = 0

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT s.sno,s.cno
from sc s
WHERE s.grade IS NOT NULL AND s.grade = 0

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.sno,s.grade
from sc s
WHERE s.cno = 3
ORDER BY s.grade DESC

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student s
ORDER BY s.sdept,s.sage DESC

--22��	��ѯѧ����������
SELECT COUNT(*) AS '����'
from student s 

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT count(*) AS '����'
from student s
WHERE s.sdept = 'MA'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(s.grade) AS 'ƽ���ɼ�'
from sc s
WHERE s.cno = 1

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(s.grade) AS '��߷�'
from sc s
WHERE s.cno = 1

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(s.grade) AS '�ܷ���'
from sc s
WHERE s.sno = 200215121

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT c.cno,COUNT(*) 
from sc s RIGHT JOIN course c ON s.cno = c.cno
GROUP BY c.cno

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.sno
from sc s
GROUP BY s.sno
HAVING COUNT(*)>3
