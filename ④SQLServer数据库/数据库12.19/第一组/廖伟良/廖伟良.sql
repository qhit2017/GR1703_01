--1.��ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.Sname
from Student1 a

--2.��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT b.Sname,b.Sno,b.Sdept
from Student1 b

--3.��ѯȫ��ѧ���������������䡣
SELECT c.Sname,c.Sage
from Student1 c

--4.��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
FROM Student1 WHERE Sdept='�������ѧ'

--5.��ѯ����������20�����µ�ѧ�������������䡣
SELECT d.Sname,d.Sage
from Student1 d WHERE d.Sage<20

--6.��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT e.Sname,e.Sage,e.Grade
from Student1 e WHERE e.Sage>=18 ORDER BY e.Grade

--7.��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT f.Sno
from Student1 f WHERE f.Grade<60 ORDER BY f.Grade DESC

--8.��ѯ������18-22�꣨����18��22�֮꣩���ѧ����������רҵ�����䡣
SELECT g.Sname,g.Sdept,g.Sage
from Student1 g WHERE g.Sage>=18 AND g.Sage<=22

--9.��ѯ���䲻��20-23��֮���ѧ��������רҵ�����䡣
SELECT h.Sname,h.Grade,h.Sage
from Student1 h WHERE h.Sage<20 AND h.Sage>23

--10.��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT i.Sname,i.Ssex
from Student1 i WHERE i.Sdept='IS' OR i.Sdept='MA' OR i.Sdept='CS'

--11.��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ���������Ա�
SELECT j.Sname,j.Ssex
from Student1 j WHERE j.Sdept='IS' AND j.Sdept='MA' AND j.Sdept='CS'

--12.��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM Student1 WHERE Sno='09102040203'

--13.��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT k.Sname,k.Sno,k.Ssex
from Student1 k WHERE k.Sname LIKE '��%'

--14.��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT l.Sname
from Student1 l WHERE l.Sname LIKE '��__'

--15.��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT m.Sname,m.Sno
from Student1 m WHERE m.Sname LIKE '_��%'

--16.��ѯ���в��ա��¡���ѧ��������
SELECT n.Sname
from Student1 n WHERE n.Sname NOT LIKE'��%'