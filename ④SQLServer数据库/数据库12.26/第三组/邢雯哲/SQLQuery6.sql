SELECT * FROM student s

SELECT * FROM Courses c

SELECT * FROM sc d
--1����ѯȫ��ѧ����ѧ��������
SELECT s.sno ,s.sname
from student s

--2����ѯȫ��ѧ����������ѧ�š�����ϵ
SELECT s.sname,s.sno,s.sdept
from student s

--3����ȫ��ѧ������������������
SELECT s.sname,s.sage
from student s

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼��
SELECT s.sno
from Courses c INNER JOIN student s
ON c.Cno=s.sno

--5����ѯ�������ѧϵȫ��ѧ��������
SELECT *
from student s
WHERE s.sdept='�������ѧ'

--6����ѯ����������20�����µ�ѧ��������������
SELECT s.sname,s.sage
from student s
WHERE s.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ��
SELECT s.sno
from student s INNER JOIN sc c
ON c.cno=s.sno
AND c.Grade<60
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������

SELECT s.sname,s.sdept,s.sage
from student s
WHERE s.sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�

SELECT s.sname,s.ssex
from student s INNER JOIN Courses c
on c.Cno=s.sno
AND s.sdept='��Ϣϵ'

--11����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT s.sname
from student s
where s.sname='��__'
--12����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�

SELECT s.sname,s.sno,s.ssex
from student s
WHERE s.sname='��__'
--13����ѯ���в��ա��¡���ѧ������
SELECT s.sname
from student s
where s.sname NOT  LIKE'��'

--14����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT s.sname,s.sno
from student s
WHERE s.sname='%��%'

--15��	��ѯѧ��������
SELECT COUNT(*) as'������'
from student s

--16���������гɼ���ѧ��ѧ�źͿγ̺�
SELECT s.sno,c.Cno
from student s INNER JOIN Courses c
INNER JOIN sc a
on a.cno=c.Cno
AND a.Grade is NOT NULL ;
--17����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT s.sname,s.sdept,s.sage
from student s
where s.sage NOT BETWEEN 20 AND 23 

--18.��ѯѧ��Ϊ09102040203��ѧ������ϸ�����

SELECT COUNT(*)
from student s INNER JOIN sc c
on s.sno=c.sno
AND c.sno=1