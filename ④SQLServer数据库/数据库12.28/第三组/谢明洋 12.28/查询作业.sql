--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price
from goods g
ORDER BY g.price DESC
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname,SUM(i.inamt)
from goods g INNER JOIN indetail i ON g.gid=i.gid
GROUP BY g.gname
ORDER BY SUM(i.inamt) DESC
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price)
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON o.deptno=d.deptno
AND o.month='2017��6��'
GROUP BY d.dname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 g.gname
from goods g INNER JOIN outdetail o ON
g.gid=o.gid
AND o.month='2017��6��'
GROUP BY g.gname
ORDER BY SUM(o.outamt) DESC
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET  inamt=inamt+10 WHERE month='2017��5��' AND gid=(SELECT gid FROM goods WHERE spec='500g' AND gname='����')
SELECT * FROM indetail
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE month='2017��5��' AND deptno=(SELECT d.deptno from dept d WHERE d.dname='�豸��')
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price) as '�ܽ��'
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
GROUP BY d.dname
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gname
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
and d.dname='����'
GROUP BY g.gname
ORDER BY SUM(o.outamt) DESC
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 d.dname
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
GROUP BY d.dname 
ORDER BY SUM(o.outamt) DESC
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT TOP 1 i.month,SUM(i.inamt*g.price)
from goods g INNER JOIN indetail i ON g.gid=i.gid 
GROUP BY i.month
ORDER BY SUM(i.inamt*g.price) DESC
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
SELECT SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
AND g.price<10 AND d.dname='����'

