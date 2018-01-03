--1.	��ѯ�ա������ʦ������
SELECT t.tname FROM teacher t
WHERE t.tname LIKE '��%';

--2.	��ѯ������Ů���ֱ��ж�����
SELECT s.ssex AS '�Ա�',COUNT(*) AS '����' FROM student s
GROUP BY s.ssex;

--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT s.sname FROM student s
WHERE s.sname LIKE '_��%';

--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(sc.score) AS '��߷�',MIN(sc.score) AS '��ͷ�',AVG(sc.score) AS 'ƽ����' 
	FROM sc sc INNER JOIN course c ON sc.cid = c.cid
	AND c.cname = '����';

--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT sc.sid,AVG(sc.score) FROM sc sc
GROUP BY sc.sid 
HAVING AVG(sc.score)>60;

--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���
SELECT sc.sid AS 'ѧ��',s.sname AS '����',COUNT(c.cid) AS 'ѡ����',SUM(sc.score) AS '�ܳɼ�'  
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid
GROUP BY s.sid,sc.sid,s.sname ;

--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT t.tname,s.sname,sc.score 
FROM student s INNER JOIN sc sc ON s.sid = sc.sid 
	INNER JOIN course c ON c.cid = sc.cid 
	INNER JOIN teacher t ON c.tid = t.tid
AND c.cname = '����Ӫ��';

--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT s.sid,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid
WHERE  sc.score < 80;

--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT s.sid,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid
WHERE sc.score IS NULL;

--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5��
SELECT *,
	CASE t.tname WHEN '����' THEN sc.score - 5 ELSE sc.score END '�·���'
FROM course c INNER JOIN teacher t ON c.tid = t.tid INNER JOIN sc sc ON c.cid = sc.cid
 

--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
DELETE FROM sc WHERE cid IN (SELECT sc.cid
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON t.tid = c.tid 
WHERE t.tname = '����');

--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 sc.score,s.sname FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid 
AND c.cname ='����'
ORDER BY sc.score DESC;

--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT c.cname AS '��Ŀ',AVG(sc.score) AS 'ƽ����' FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
GROUP BY c.cname;

--14.	��ѯÿ�ſ�Ŀ�ļ�����
SELECT c.cname AS '��Ŀ',COUNT(sc.score) FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
WHERE sc.score > =60
GROUP BY c.cname;

--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
SELECT TOP 3 s.sname,sc.score,t.tname  
FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON c.tid = t.tid
AND c.cname = 'Ӣ��'
ORDER BY sc.score DESC;
--16.	��ѯÿ�ſο��Ե�����
SELECT c.cname,COUNT(*) FROM sc sc RIGHT JOIN course c ON c.cid = sc.cid 
AND sc.score IS NOT NULL 
GROUP BY c.cname;

--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
SELECT s.sid,s.sname,AVG(sc.score) FROM sc sc INNER JOIN student s ON s.sid = sc.sid 
GROUP BY s.sid,s.sname
HAVING AVG(sc.score)>85

--18.	��ѯ��ͬ��������ͬ�Ա������Щ�� 
SELECT c.sname FROM student c
WHERE EXISTS(SELECT s.sage,s.ssex 
FROM student s WHERE s.sage IN (SELECT s.sage FROM student s GROUP BY s.sage HAVING COUNT(s.sage)>1)
GROUP BY s.sage,s.ssex HAVING COUNT(s.ssex)>1 AND c.sage = s.sage AND c.ssex = s.ssex);

--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
SELECT s.sname,s.ssex,sc.score FROM sc sc INNER JOIN student s ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid
AND c.cname = 'java����' AND sc.score BETWEEN 70 AND 90;

--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
SELECT TOP 2 s.sname,sc.score FROM student s INNER JOIN sc sc ON s.sid = sc.sid INNER JOIN course c ON c.cid = sc.cid INNER JOIN teacher t ON c.tid = t.tid 
AND t.tname = '����'
ORDER BY sc.score  DESC 


