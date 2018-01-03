
--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 gname,price 
from goods
ORDER BY price DESC 
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT a.gname,a.price,SUM(a.price*b.inamt) 
from goods a INNER JOIN indetail b ON a.gid =b.gid
GROUP BY a.gname,a.price
ORDER BY SUM(a.price*b.inamt) 


--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 a.gname
from goods a INNER JOIN indetail b ON a.gid =b.gid
WHERE b.month='2017��5��'
ORDER BY b.inamt DESC 


--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT c.dname,SUM(b.outamt*d.price) 
from  outdetail b  INNER JOIN dept c ON b.deptno=c.deptno INNER JOIN goods d ON b.gid=d.gid
WHERE b.month='2017��6��'
GROUP BY c.dname
 



--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 b.gname
from outdetail a INNER JOIN goods b ON a.gid=b.gid
where a.month='2017��6��'

ORDER BY  a.outamt DESC 


--6.	���±���500g�Ĺ��ӣ�5�·������������10
SELECT a.gname,inamt=(inamt+10)
from goods a INNER JOIN  indetail b  ON a.gid=b.gid 
WHERE a.gname='����' AND b.month='2017��5��'




--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE month='2017��5��' AND deptno =(SELECT a.deptno from dept  a WHERE dname ='�豸��')



--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT c.dname,SUM (b.outamt*a.price)
from goods a INNER JOIN outdetail b ON a.gid=b.gid INNER JOIN  dept c ON b.deptno=c.deptno
GROUP BY c.dname
ORDER BY SUM (b.outamt*a.price)
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT SUM(a.outamt),c.dname 
from outdetail a INNER JOIN dept c ON a.deptno=c.deptno
WHERE c.dname='����'
GROUP BY c.dname
ORDER BY SUM(a.outamt)  DESC 



--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT b.dname
from outdetail a INNER JOIN dept b ON a.deptno=b.deptno INNER JOIN goods c ON a.gid=c.gid
WHERE c.gname ='�����±���'AND c.gname='�������'
GROUP BY b.dname



--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 c.dname ,SUM(b.outamt)  
from goods  a INNER JOIN outdetail b ON a.gid=b.gid INNER JOIN dept c ON b.deptno=c.deptno
WHERE a.gname='���'
GROUP BY c.dname
ORDER BY SUM(b.outamt)  DESC



--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT TOP 1 b.month,SUM(a.price*b.inamt) 
from goods a INNER JOIN indetail b ON a.gid=b.gid
GROUP BY b.month
ORDER BY SUM(a.price*b.inamt) DESC  

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣�
SELECT SUM(a.outamt) 
from outdetail a INNER JOIN dept c ON a.deptno=c.deptno INNER JOIN goods  b ON a.gid=b.gid 
WHERE b.price<10
 
 
