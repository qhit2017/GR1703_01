--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname ,g.price 
from goods g 
ORDER BY g.price DESC 

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gname ,SUM  (i.inamt -o.outamt) as '��ǰ���' ,(SUM  (i.inamt -o.outamt)*g.price )as '�ܽ��'
from goods g INNER JOIN indetail i ON g.gid =i.gid 
INNER JOIN outdetail o ON g.gid =o.gid 
GROUP BY g.gname ,g.price
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gname 
from goods g INNER JOIN indetail i ON g.gid =i.gid 
AND i.month ='2017��5��'
GROUP BY g.gname 
ORDER BY SUM (i.inamt ) DESC 

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT   d.dname ,sum(o.outamt*g.price ) as '��Ʒ�ܽ��'
from outdetail o INNER JOIN dept d ON o.deptno=d.deptno 
INNER JOIN goods g ON g.gid =o.gid 
AND o.month ='2017��6��'
GROUP BY  d.dname

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1  g.gname 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
and o.month ='2017��6��' 
GROUP BY g.gname
ORDER BY SUM (o.outamt ) DESC 
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE  indetail SET inamt =(inamt +10) WHERE gid IN  
(SELECT g.gid
from goods g INNER JOIN indetail i ON g.gid=i.gid 
AND i.month ='2017��5��'
AND g.spec='500g')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM goods WHERE gid IN 
(SELECT  g.gid 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno
AND d.dname ='�豸��'
AND o.month ='2017��5��')
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT   d.dname ,sum(o.outamt*g.price ) as '��Ʒ�ܽ��'
from outdetail o INNER JOIN dept d ON o.deptno=d.deptno 
INNER JOIN goods g ON g.gid =o.gid 
GROUP BY  d.dname

--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT  g.gname ,SUM (o.outamt)
from goods g INNER JOIN outdetail o ON g.gid =o.gid
INNER JOIN dept d ON o.deptno=d.deptno
AND d.dname='����'
GROUP BY g.gid , g.gname 
ORDER BY SUM (o.outamt) DESC  
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��

SELECT o.month ,g.gid ,d.deptno 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno 
AND  g.gname IN ('����','���')
AND g.spec IN ('������','����')
GROUP BY o.month ,g.gid ,d.deptno 
HAVING COUNT(g.gid )=2 

--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 d.dname  
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno
AND g.gname ='���'
GROUP BY d.deptno ,d.dname
ORDER BY SUM (o.outamt )  DESC 

--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
 SELECT top 1 i.month,SUM(i.inamt*g.price)
 FROM  goods g INNER JOIN indetail i  ON g.gid =i.gid
 GROUP BY i.month 
 ORDER BY SUM(i.inamt*g.price)  DESC 
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
SELECT SUM(o.outamt) as '����'
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno=d.deptno
AND g.price >10
AND d.dname ='����'











SELECT * FROM indetail 
SELECT * FROM goods 
SELECT * FROM outdetail 
SELECT * FROM dept 
