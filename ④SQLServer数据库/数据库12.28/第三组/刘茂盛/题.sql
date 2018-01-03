SELECT *
from goods g INNER JOIN indetail i on i.gid=g.gid
SELECT *
from indetail
SELECT *
from outdetail
SELECT *
from dept
SELECT *
from goods g INNER JOIN indetail i on g.gid=i.gid
	INNER JOIN outdetail o on o.gid=g.gid 

--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 gname,price
from goods
order BY price DESC

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname,SUM(i.inamt)-sum(o.outnamt),SUM(i.inamt)*g.price-sum(o.outnamt)*g.price
from goods g INNER JOIN indetail i on g.gid=i.gid
	INNER JOIN outdetail o on o.gid=g.gid 
GROUP BY g.gname,g.price
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname
from goods g INNER JOIN indetail i on i.gid=g.gid
WHERE i.month='2017��5��'
GROUP BY g.gname
ORDER BY SUM(i.inamt)  DESC

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outnamt*g.price)
from outdetail o INNER JOIN dept d on o.detpno=d.deptno
	INNER JOIN goods g ON g.gid=o.gid
	AND o.month='2017��6��'
GROUP BY d.dname

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname
from outdetail o INNER JOIN goods g ON g.gid=o.gid
WHERE o.month='2017��6��'
GROUP BY g.gname
ORDER BY COUNT(*) desc
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt=inamt+10 WHERE gid=(SELECT g.gid from goods g INNER JOIN indetail i ON i.gid=g.gid WHERE i.month='2017��5��'AND g.spec ='500g')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE outid in( SELECT o.outid
from outdetail o INNER JOIN dept d on d.deptno=o.detpno
and o.month='2017��5��' AND d.dname='�豸��')
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outnamt*g.price)
from outdetail o INNER JOIN dept d on o.detpno=d.deptno
	INNER JOIN goods g ON g.gid=o.gid
GROUP BY d.dname
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gname
from outdetail o INNER JOIN dept d on d.deptno= o.detpno INNER JOIN goods g on g.gid= o.gid
AND d.dname='����'
GROUP BY g.gname
ORDER BY count(*) DESC

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT d.dname,o.month
from goods g INNER JOIN outdetail o on o.gid=g.gid INNER JOIN dept d on d.deptno =o.detpno
AND g.gname='����'and g.spec='������'
and EXISTS
	(SELECT * FROM goods a INNER JOIN outdetail b on a.gid=b.gid INNER JOIN dept c on c.deptno =b.detpno
	AND a.gname='���' and a.spec='����'
	AND b.month=o.month AND c.dname=d.dname)

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������

SELECT top 1 d.dname
from outdetail o INNER JOIN dept d on d.deptno=o.detpno INNER JOIN goods g on g.gid =o. gid AND g.gname='���'
GROUP BY o.detpno,d.dname
ORDER BY COUNT(*) DESC 
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT TOP 1 i.month,sum(g.price*i.inamt)
from goods g INNER JOIN indetail i on i.gid=g.gid
GROUP BY i.month
ORDER BY sum(g.price*i.inamt) DESC


--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 

SELECT SUM(o.outnamt) 
from goods g INNER JOIN outdetail o on o.gid=g.gid INNER JOIN dept d on d.deptno=o.detpno
and g.price<10 AND d.dname='����'
