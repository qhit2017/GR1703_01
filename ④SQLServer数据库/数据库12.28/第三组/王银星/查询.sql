
--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 a.gname ,a.price
FROM goods a
ORDER BY a.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT  a.gid,a.gname,b.inamt,SUM(b.inamt)AS '�ܽ��' 
FROM goods a INNER JOIN indetail b ON a.gid =b.gid
GROUP BY a.gid,a.gname,b.inamt
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT a.gname
FROM goods a
WHERE a.gid IN(SELECT a.gid FROM indetail a where a.inamt IN 
				(SELECT MAX(a.inamt) FROM indetail a WHERE a.month LIKE '2017��5��')) 
				
SELECT TOP 1 b.gname,b.spec
FROM indetail a INNER JOIN goods b ON a.gid =b.gid
WHERE a.month LIKE '2017��5��'
ORDER BY a.inamt DESC

SELECT TOP 1 a.gid ,a.gname ,a.spec ,SUM(b.inamt)
FROM goods a INNER JOIN indetail b ON a.gid =b.gid 
AND b.month ='2017��5��'
GROUP BY a.gid ,a.gname ,a.spec 
ORDER BY SUM(b.inamt)DESC 	
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT c.dname ,SUM(a.outamt *b.price)AS '�ܽ��' 
FROM outdetail a INNER JOIN goods b ON a.gid =b.gid
	INNER JOIN dept c ON a.deptno =c.deptno
    AND a.month = '2017��6��'
GROUP BY c.dname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 a.gname
FROM goods a INNER JOIN indetail b ON a.gid =b.gid
WHERE b.month LIKE '2017��6��'
ORDER BY b.inamt DESC
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt =(inamt +10)
				WHERE inid =(SELECT a.inid FROM indetail a INNER JOIN goods b ON a.gid =b.gid 
				WHERE b.spec LIKE '500g'AND b.gname LIKE '����'AND a.month LIKE '2017��5��')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE outid IN (SELECT b.outid FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno
										AND b.month LIKE '2017��5��'
										AND a.dname LIKE '�豸��') 
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���

--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 c.gname
FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno 
INNER JOIN goods c ON b.gid =c.gid AND a.dname ='����'
ORDER BY b.outamt DESC
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT a.month
FROM outdetail a INNER JOIN dept b ON a.deptno =b.deptno 
GROUP BY a.month

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT a.month,b.gname,sum(a.inamt *b.price) 
FROM indetail a INNER JOIN goods b ON a.gid =b.gid
group BY a.month,b.gname, (a.inamt *b.price)
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
SELECT SUM(b.outamt) AS '����'
FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno AND a.dname ='����'
AND b.gid IN (SELECT a.gid FROM goods a WHERE a.price <10)
