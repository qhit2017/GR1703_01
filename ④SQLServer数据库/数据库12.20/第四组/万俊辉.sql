--1.��ѯȱ�ٳɼ���ѧ����ѧ�ź�����
SELECT a.Sname,a.Sno FROM Student a WHERE a.Grade IS NULL;

--2.��ѯÿ��רҵ��ѧ����ƽ���ɼ�
SELECT b.Sdept as 'רҵ',AVG(b.Grade) as 'ƽ����' FROM Student b GROUP BY b.Sdept;

--3.�������гɼ���ѧ����ѧ�ź�����
SELECT c.Sno,c.Sname FROM Student c WHERE c.Grade IS NOT NULL;

--4.��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併������
SELECT * FROM Student d ORDER BY d.Sdept ASC ,d.Sage DESC;

--5.��ѯѧ��������
SELECT COUNT(*) as '����' FROM Student e;

--6.��ѯ������Ů��������
SELECT f.Ssex as '�Ա�',COUNT(f.Ssex) as '����' FROM Student f GROUP BY f.Ssex;

--7.��ѯÿ��רҵ��ƽ���ɼ���������ճɼ���������
SELECT g.Sdept as 'רҵ',AVG(g.Grade) as 'ƽ����' FROM Student g GROUP BY g.Sdept ORDER BY AVG(g.Grade);

--8.��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ�
SELECT h.Sdept as 'רҵ',MAX(h.Grade) as '��߷�' FROM Student h GROUP BY h.Sdept;

--9.��ѯÿ��רҵ�гɼ�����ѧ���ɼ�
SELECT i.Sdept as 'רҵ',MIN(i.Grade) as '��ͷ�' FROM Student i GROUP BY i.Sdept;

--10.��ѯƽ���ɼ�����רҵ������
SELECT TOP 1 j.Sdept  FROM Student j GROUP BY j.Sdept ORDER BY AVG(j.Grade);

--11.��ѯ������Ů����ƽ���ɼ�
SELECT l.Ssex as '�Ա�',AVG(l.Grade) as 'ƽ����' FROM Student l GROUP BY l.Ssex;

--12.��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ�
SELECT m.Sname as '����',m.Grade as '�ɼ�' FROM Student m WHERE m.Grade>(SELECT AVG(m.Grade) as 'ƽ����' FROM Student m);


----------------------------------------------------------------------------------------

--13.��ѯרҵѧ����������50�˵�רҵ��
SELECT n.Sdept as 'רҵ' FROM Student n 
--WHERE EXISTS ((SELECT n.Sdept as 'רҵ',COUNT(n.Sno) AS '����' FROM Student n GROUP BY n.Sdept))
GROUP BY n.Sdept

--14.��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��
--SELECT * FROM Student o WHERE o.Sdept='�����' AND o.Sage<18
