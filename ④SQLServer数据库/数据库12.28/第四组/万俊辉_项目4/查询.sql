--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price FROM goods g
ORDER BY g.price DESC;

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname AS '��Ʒ����' ,g.spec AS '��ƷƷ��',SUM(i.inamt) AS '���' ,SUM(i.inamt)*g.price AS '�ܶ�' 
FROM goods g INNER JOIN indetail i ON g.gid = i.gid
GROUP BY g.spec,g.gname,g.price,g.gid;

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname,g.spec
FROM goods g INNER JOIN indetail i ON g.gid = i.gid
AND i.month='2017��5��'
GROUP BY g.spec,g.gname,g.gid
ORDER BY SUM(i.inamt) DESC;

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price)
FROM outdetail o INNER JOIN dept d ON d.deptno = o.deptno INNER JOIN goods g ON g.gid = o.gid
AND o.month = '2017��6��'
GROUP BY d.dname;

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname,g.spec,SUM(o.outamt)
FROM outdetail o INNER JOIN goods g ON g.gid = o.gid 
AND o.month = '2017��6��'
GROUP BY g.spec,g.gname,g.gid
ORDER BY SUM(o.outamt) DESC;

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt = inamt+10 
WHERE month = '2017��5��' AND gid = (SELECT gid FROM goods WHERE spec = '500g');

--7.	7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail 
WHERE deptno = (SELECT deptno FROM dept WHERE dname = '�豸��')
AND month = '2017��5��';

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price) 
FROM outdetail o INNER JOIN dept d ON d.deptno = o.deptno
	INNER JOIN goods g ON g.gid = o.gid
GROUP BY d.dname

--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gname,g.spec
FROM dept d INNER JOIN outdetail o ON d.deptno = o.deptno
	INNER JOIN goods g ON g.gid = o.gid
AND d.dname = '����'
GROUP BY g.spec,g.gname
ORDER BY SUM(o.outamt) DESC;

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT dname FROM dept 
WHERE deptno IN (
SELECT a.deptno FROM outdetail a 
WHERE EXISTS(
SELECT o.month,o.gid FROM outdetail o
WHERE o.gid IN (SELECT g.gid FROM goods g WHERE g.gname = '����' AND g.spec='������' OR g.gname = '���' AND g.spec = '����')
GROUP BY o.month,o.gid
HAVING COUNT(*)>1 AND a.gid = o.gid AND a.month = o.month)
GROUP BY a.deptno 
HAVING COUNT(*)>1)

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 d.dname
FROM outdetail o INNER JOIN goods g ON g.gid = o.gid 
	INNER JOIN dept d ON d.deptno = o.deptno
	AND g.gname = '���'
	GROUP BY d.dname
	ORDER BY SUM(o.outamt);

--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT TOP 1 SUM(i.inamt*g.price)
FROM indetail i INNER JOIN goods g ON g.gid = i.gid
GROUP BY i.month
ORDER BY SUM(i.inamt*g.price) DESC

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣�
SELECT SUM(outamt)
FROM goods g INNER JOIN outdetail ON g.gid = outdetail.gid 
	INNER JOIN dept d ON d.deptno = outdetail.deptno 
	AND g.price<10 AND d.dname = '����';
