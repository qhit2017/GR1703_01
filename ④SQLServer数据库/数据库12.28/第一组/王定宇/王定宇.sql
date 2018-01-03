
--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�					
SELECT TOP 1 a.gname,a.price
FROM goods a
GROUP BY a.gname,a.price
ORDER BY a.price desc

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���    

SELECT  g.gname ,g.spec,sum(i.inamt)-SUM(o.outamt) as '���' ,SUM(i.inamt*CAST(g.price AS int)) as '�ܽ��'
from indetail i INNER JOIN goods g ON i.gid=g.gid
INNER JOIN outdetail o ON o.gid=g.gid
GROUP BY g.gname,g.spec

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������    
SELECT top 1 g.gname,sum(a.inamt) as '��Ʒ����'
from indetail a INNER JOIN goods g ON a.gid=g.gid
AND a.month='2017��5��'
GROUP BY g.gname
ORDER BY sum(a.inamt) desc


--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���  
SELECT  o.deptno,sum(o.outamt) as '������Ʒ����' ,sum(o.outamt*CAST(g.price AS int)) as '�ܽ��'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
AND o.month='2017��6��'
GROUP BY o.deptno

 
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������     
SELECT top 1 g.gname, sum(o.outamt) as '������Ʒ����'
from outdetail o INNER JOIN goods g ON o.gid=g.gid
WHERE o.month='2017��6��'
GROUP BY g.gname
ORDER BY sum(o.outamt) desc

--6.	���±���500g�Ĺ��ӣ�5�·������������10   
SELECT (i.inamt+10) as '�������'
from goods g INNER JOIN indetail i ON g.gid=i.gid
AND g.spec='500g'
and g.gname='����'
AND i.month='2017��5��'

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��  
SELECT *
from dept d INNER JOIN outdetail o ON d.deptno=o.deptno
where d.dname='�豸��'
DELETE  from outdetail  where month='2017��5��'

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���  
SELECT o.deptno ,sum(o.outamt) as '��������' ,sum(o.outamt*CAST(g.price as int)) as '��Ʒ�ܽ��'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
GROUP BY o.deptno


--9.	��ѯ�������õ��ĸ���Ʒ��� 
SELECT TOP 1 o.deptno,g.gname,sum(o.outamt) as'����'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND d.dname='����'
GROUP BY o.deptno,g.gname
ORDER BY sum(o.outamt) DESC

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ�� 
SELECT d.dname
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno = o.deptno
AND g.spec IN ('������','����' )
AND o.month=o.month
GROUP BY d.dname

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ�������� 
SELECT TOP 1 d.dname,sum(o.outamt) as '�����������'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND g.gname='���'
GROUP BY d.dname
ORDER BY sum(o.outamt) desc


--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�  
SELECT TOP 1 i.month,sum(i.inamt*CAST(g.price AS int)) as '�ܽ��'
from goods g INNER JOIN indetail i ON g.gid=i.gid
GROUP BY i.month
ORDER BY sum(i.inamt*CAST(g.price AS int)) DESC

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣�  
SELECT  sum(o.outamt) as '��������'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND g.price<10
AND d.dname='����'
 