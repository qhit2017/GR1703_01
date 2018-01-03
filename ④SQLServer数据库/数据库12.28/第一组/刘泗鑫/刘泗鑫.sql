--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price
from goods g
GROUP BY g.gname,g.price
ORDER BY g.price DESC

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname,SUM(i.inamt)-SUM(o.outamt) AS '���',(SUM(i.inamt) - SUM(o.outamt))*g.price AS '�ܽ��'
from goods g INNER JOIN indetail i ON g.gid = i.gid INNER JOIN outdetail o ON g.gid = o.gid
GROUP BY g.gname,g.price

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 i.inamt
from indetail i
WHERE i.month = '2017��5��'
ORDER BY i.inamt DESC

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT o.deptno,SUM(o.outamt*CAST(g.price AS int)) AS '�ܽ��'
from outdetail o INNER JOIN goods g ON o.gid = g.gid INNER JOIN indetail i ON g.gid = i.gid
AND o.month = '2017��6��'
GROUP BY o.deptno

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname,COUNT(o.outamt) AS '�������'
from outdetail o INNER JOIN goods g ON o.gid = g.gid
AND o.month = '2017��6��'
GROUP BY g.gname
ORDER BY COUNT(o.outamt) DESC

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt = (inamt + 10) WHERE gid = (
		SELECT g.gid from goods g INNER JOIN indetail i ON g.gid = i.gid
		AND i.month = '2017��5��' AND g.gname = '����' AND g.spec = '500g')

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE outamt IN(
		SELECT o.outamt
		FROM outdetail o INNER JOIN dept d ON o.deptno = d.deptno
		AND o.month = '2017��5��')

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*CAST(g.price AS int)) AS '�ܽ��'
FROM goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
GROUP BY d.dname

--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gname,SUM(o.outamt) AS '����'
FROM goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
AND d.dname = '����'
GROUP BY g.gid,g.gname
ORDER BY SUM(o.outamt)DESC

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT d.dname,o.month
from goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
AND g.gname = '�����±���' AND g.gname = '�������'
AND EXISTS (
	SELECT * 
	FROM goods g INNER JOIN outdetail m ON g.gid = m.gid INNER JOIN dept n ON m.deptno = n.deptno
	AND g.gname = '���' AND g.spec = '����' AND n.dname = d.dname AND m.month = o.month )

