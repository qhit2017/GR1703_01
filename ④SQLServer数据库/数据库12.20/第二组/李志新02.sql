1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
3.	�������гɼ���ѧ����ѧ�ź�������
4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
5.	��ѯѧ����������
6.	��ѯ������Ů����������
7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
10.	��ѯƽ���ɼ�����רҵ�����֡�
11.	��ѯ������Ů����ƽ���ɼ���
12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
13.	��ѯרҵѧ����������50�˵�רҵ����
14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����


--	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.Sno,a.Sname
FROM student a

--��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT b.Sdept,AVG(b.Grade) as 'ƽ��ֵ'
from student b
GROUP BY b.Sdept


--�������гɼ���ѧ����ѧ�ź�������
SELECT c.Sno,c.Sname
from student c
where c.Grade IS NOT NULL 


--��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student d
ORDER by d.Sdept ASC ,d.Sage desc
 



--��ѯѧ����������
SELECT count(*)
from student e


--��ѯ������Ů��������
SELECT f.Ssex,COUNT(*) as'����'
from student f
GROUP BY f.Ssex


--��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT g.Sdept,AVG(g.Grade)as 'ƽ���ɼ�'
from student g
GROUP BY g.Sdept
ORDER BY AVG(g.Grade) DESC




--	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT h.Sdept,MAX(h.Grade)
from student h
GROUP BY h.Sdept



--��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT i.Sdept,MIN(i.Grade)
from student i
GROUP BY i.Sdept


--��ѯƽ���ɼ�����רҵ�����֡�
SELECT j.Sdept,(AVG(j.Grade) as 'ƽ���ɼ�'
from student j
GROUP BY j.Sdept

----00000000000000000000000000000000000000000000000000000000000000



--	��ѯ������Ů����ƽ���ɼ���
SELECT k.Ssex,AVG(k.Grade) AS 'ƽ���ɼ�'
from student k
GROUP BY k.Ssex



--��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���




--00000000000000000000000000000000000000000000

--��ѯרҵѧ����������50�˵�רҵ����
SELECT m.Sdept,COUNT(*) as '����'
from student m
GROUP BY m.Sdept



--��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ��
SELECT  n.Sdept,AVG(n.Grade) as 'ƽ���ɼ�' 
from student n
GROUP BY n.Sdept
