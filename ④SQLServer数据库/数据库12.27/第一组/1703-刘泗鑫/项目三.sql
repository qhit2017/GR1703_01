--1.	��ѯ�ա������ʦ������
SELECT t.tname
FROM teacher t
WHERE t.tname LIKE '��%'

--2.	��ѯ������Ů���ֱ��ж�����
SELECT s.ssex,COUNT(*) AS '����'
FROM student s 
GROUP BY s.ssex

--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT *
FROM student s
WHERE s.sname LIKE '_��%'

--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(s.score) AS '��߷�', MIN(s.score) AS '��ͷ�',AVG(s.score) AS 'ƽ����'
FROM sc s INNER JOIN course c ON s.cid = c.cid
WHERE c.cname = '����'

--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT s.sid,s.sname,AVG(c.score) AS 'ƽ����'
FROM student s INNER JOIN sc c ON s.sid = c.sid
GROUP BY s.sid,s.sname
HAVING AVG(c.score)>60

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT s.sid,s.sname,COUNT(*) AS 'ѡ����' ,SUM(a.score) AS '�ܳɼ�'
FROM student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON a.cid = c.cid
GROUP BY s.sid,s.sname

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname,s.sname,a.score
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid INNER JOIN student s ON s.sid = a.sid
WHERE c.cname = '����Ӫ��'

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sname,a.score
from student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON c.cid = a.cid
WHERE a.score <80
GROUP BY c.cname,s.sid,s.sname,a.score

--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname
FROM student s INNER JOIN sc a ON s.sid = a.sid RIGHT JOIN course c ON c.cid = a.cid
WHERE a.score IS NULL AND a.score = 0

--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
UPDATE sc SET score=(score-5) where cid IN (
SELECT DISTINCT a.cid
from course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid
WHERE t.tname = '����') 

--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
DELETE  FROM sc where cid IN  (
SELECT a.cid
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc a ON a.cid = c.cid
WHERE t.tname = '������')

--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 MAX(a.score) AS '��߷�',s.sname
FROM student s INNER JOIN sc a ON s.sid = a.sid INNER JOIN course c ON c.cid = a.cid
WHERE c.cname = '����'
GROUP BY s.sname
ORDER BY MAX(a.score) DESC

--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT c.cname,AVG(s.score) AS 'ƽ���ɼ�'
FROM course c INNER JOIN sc s ON c.cid = s.cid
GROUP BY c.cname

--14.	��ѯÿ�ſ�Ŀ�ļ�����

--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
SELECT *
FROM
--16.	��ѯÿ�ſο��Ե�����
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
--18.	��ѯ��ͬ��������ͬ�Ա������Щ��
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
