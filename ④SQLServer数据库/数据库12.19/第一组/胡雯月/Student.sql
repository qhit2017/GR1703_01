--1.��ѯȫ��ѧ����ѧ��������
SELECT * FROM Student;

--2.��ѯȫ��ѧ����������ѧ�š�רҵ
SELECT a.Sname,a.Sno,a.Sdept
FROM Student a;

--3.��ȫ��ѧ����������������
SELECT b.Sname,b.Sage
FROM Student b;

--4.��ѯ���������ѧ��רҵȫ��ѧ��������
SELECT * FROM Student c WHERE c.Sdept='�������ѧ';

--5.��ѯ����������20�����µ�ѧ��������������
SELECT d.Sname,d.Sage 
FROM Student d WHERE d.Sage<=20;

--6.��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT e.Sname,e.Sage,e.Grade FROM Student e WHERE e.Sage<18 ORDER BY e.Grade ASC;

--7.��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ���������
SELECT f.Sname,f.Sno FROM Student f ORDER BY f.Grade DESC;

--8.��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ������
SELECT g.Sname,g.Sdept,g.Sage FROM Student g WHERE g.Sage<=22 AND g.Sage>=18;

--9.��ѯ���䲻��20~23��֮���ѧ��������רҵ������
SELECT h.Sname,h.Sdept,h.Sage FROM Student h WHERE h.Sage<=20 AND h.Sage>=22;

--10.��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT i.Sname,i.Ssex FROM Student i WHERE i.Sdept='IS' OR i.Sdept='MA' OR i.Sdept='CS';

--11.��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT j.Sname,j.Ssex FROM Student j WHERE j.Sdept!='IS' OR j.Sdept!='MA' OR j.Sdept!='CS';

--12.��ѯѧ��Ϊ09102040203��ѧ������ϸ���
SELECT * FROM Student WHERE Sno='09102040203';

--13.��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT k.Sname,k.Sno,k.Ssex FROM Student k WHERE k.Sname LIKE '��%';

--14.��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ��������
SELECT l.Sname FROM Student l WHERE l.Sname LIKE '��__';

--15.��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ��
SELECT m.Sname,m.Sno FROM Student m WHERE m.Sname LIKE '_��%';

--16.��ѯ���в��ա��¡���ѧ������
SELECT n.Sname FROM Student n WHERE n.Sname NOT LIKE '��%';