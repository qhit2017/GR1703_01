--1����ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname
from atudent a 
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.sname,a.sno,a.sdept
from atudent a 
--3����ȫ��ѧ�����������������ݡ�
SELECT a.sname,a.sage
from atudent a 
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT a.sno
from atudent a INNER JOIN sc s ON a.sno =s.sno
AND s.sno IS NOT NULL 
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT a.sname
from atudent a 
WHERE a.sdept='�������ѧϵ'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT a.sname,a.sage
from atudent a 
WHERE a.sname <20
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.sno
from sc s 
WHERE s.grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.sname ,a.sdept ,a.sage 
from atudent a 
WHERE a.sage BETWEEN 18 AND 22 
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.sname ,a.sdept ,a.sage 
from atudent a 
WHERE a.sage NOT  BETWEEN 18 AND 22 
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sname,a.ssex 
from atudent a 
WHERE a.sdept IN ('IS','MA','CS')
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex 
from atudent a 
WHERE a.sdept  not IN ('IS','MA','CS')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from atudent a 
WHERE a.sno='09102040203'
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
from atudent a 
WHERE a.sname LIKE '��%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.sname
from atudent a 
WHERE a.sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.sname,a.sno
from atudent a 
WHERE a.sname LIKE '_��%'
--16����ѯ���в��ա��¡���ѧ��������
SELECT a.sname
from atudent a 
WHERE a.sname  not LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT c.con,c.ccredit
from course c 
WHERE c.cname='DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT s.con ,s.sno
from sc s 
WHERE s.grade IS  NULL 
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT s.con ,s.sno
from sc s 
WHERE s.grade IS NOT NULL 
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT s.con ,s.grade
from sc s 
WHERE s.con =3
ORDER BY s.grade  DESC 
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from atudent a 
--22��	��ѯѧ����������
SELECT COUNT(a.sno ) 
from atudent a 
--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*) 
from course c 
WHERE c.cname='��ѧ'
--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(s.grade ) 
from sc s 
WHERE s.con=1
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(s.grade)  
from sc s 
WHERE s.con=1
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(c.ccredit) 
from course c INNER JOIN sc s ON c.con=s.con
AND s.sno='200215121'
--27��	������γ̺ż���Ӧ��ѡ��������
SELECT  s.con ,COUNT(s.con) as '����'
from sc s 
GROUP BY s.con 
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.sno
from sc s 
GROUP BY s.con ,s.sno
HAVING COUNT(s.con )>3

