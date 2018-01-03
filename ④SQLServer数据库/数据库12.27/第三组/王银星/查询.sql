SELECT *FROM Course 
SELECT *FROM SC
SELECT *FROM Student
SELECT *FROM Teacher
--1.	��ѯ�ա������ʦ������
SELECT a.Tname
FROM Teacher a
where a.Tname LIKE '��%'
--2.	��ѯ������Ů���ֱ��ж�����
SELECT a.ssex,COUNT(*) AS '����'
FROM Student a
group BY a.ssex
--3.	��ѯѧ���еڶ��������ĵ�����Щ��
SELECT a.sname
FROM Student a
where a.sname LIKE '_��%'
--4.	��ѯ���Ŀ��Ե���߷֡���ͷ��Լ�ƽ����
SELECT MAX(a.score)AS'���Ŀ�����߷�',MIN(a.score)AS'���Ŀ�����ͷ�',AVG(a.score) AS'���Ŀ���ƽ����'  
FROM SC a
where a.cid=(SELECT a.CId FROM Course a where a.Cname LIKE '����' )
--5.	��ѯƽ���ɼ�����60�ֵ�ͬѧ��ѧ�ź�ƽ���ɼ���
SELECT a.sid,AVG(a.score)AS 'ƽ���ɼ�'
FROM SC a
GROUP BY a.sid
HAVING AVG(a.score)>60 
--6.	��ѯ����ͬѧ��ѧ�š�������ѡ�������ܳɼ���


--7.	��ѯ����Ӫ�����ſεĽ�ʦ���ơ�ѧ�����ơ�ѧ���ɼ�
SELECT a.Tname ,d.sname ,c.score
FROM Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE '����Ӫ��'
--8.	��ѯ���пγ̳ɼ�С��80�ֵ�ͬѧ��ѧ�š�������
SELECT DISTINCT  a.sid ,b.sname
FROM SC a INNER JOIN Student b ON a.sid =b.sid
AND a.score <80
--9.	��ѯû�вμ����пγ̿��Ե�ͬѧ��ѧ�š�����
SELECT *
FROM SC a INNER JOIN Course b ON a.cid =b.CId
--10.	�ѡ�SC�����С���������ʦ�̵Ŀεĳɼ�����5�֣�
SELECT (a.score-5)
FROM SC a
where a.cid IN(SELECT a.CId FROM Course a where a.TId =
			(SELECT a.TId FROM Teacher a WHERE a.Tname LIKE '����'))
--11.	ɾ���ɼ����С������ա���ʦ�̵Ŀγ̵ļ�¼��
DELETE FROM SC 
	WHERE cid =
	(SELECT a.CId FROM Course a WHERE a.TId=
	(SELECT a.TId FROM Teacher a WHERE a.Tname LIKE '������'))
--12.	��ѯ���ĵ���߷��Լ�ѧ������
SELECT TOP 1 MAX(c.score)AS'������߷�',d.sname 
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE '����'
				GROUP BY d.sname
--13.	��ѯÿ�ſ�Ŀ��ƽ���ɼ�
SELECT b.Cname ,AVG(a.score) AS'ƽ���ɼ�'
FROM SC a INNER JOIN Course b ON a.cid =b.CId
GROUP BY b.Cname
--14.	��ѯÿ�ſ�Ŀ�ļ�����
--15.	��ѯӢ��ǰ������ѧ����������������ʦ����
SELECT top 3 d.sname ,c.score,a.Tname
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE 'Ӣ��'
				ORDER BY c.score DESC
--16.	��ѯÿ�ſο��Ե�����
SELECT b.Cname,COUNT(*) AS'����'
FROM SC a INNER JOIN Course b ON a.cid =b.CId
GROUP BY a.cid ,b.Cname
--17.	��ѯƽ���ɼ�����85������ѧ����ѧ�š�������ƽ���ɼ�
SELECT b.sid ,a.sname ,AVG(b.score) 
FROM Student a INNER JOIN SC b ON a.sid =b.sid
AND b.score >85
GROUP BY b.sid,a.sname
--18.	��ѯ��ͬ��������ͬ�Ա������Щ�� 
--19.	��ѯjava�������ڵ���70��С�ڵ���90��Ů��������������Ա𡢷���
SELECT d.sname ,d.ssex ,c.score
FROM  Teacher a INNER JOIN Course b ON a.TId =b.TId
				INNER JOIN SC c ON c.cid =b.CId
				INNER JOIN Student d ON d.sid =c.sid
				AND b.Cname LIKE 'java����'
				AND (d.sage>=70 AND d.sage <=90)
				AND d.ssex LIKE 'Ů'
--20.	��ѯ������ʦ�̵Ŀ��У��ɼ���õ�ǰ������������ֺͷ���
