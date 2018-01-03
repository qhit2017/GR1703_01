--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 g.gname,g.price
from goods g 
order by g.price DESC 
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT g.gid,g.gname,g.spec,g.price,SUM(i.inamt)-SUM(o.outamt) as '�����',
   (SUM(i.inamt)-SUM(o.outamt))*g.price as '�ܽ��'
from goods g INNER JOIN indetail i on g.gid = i.gid
 INNER JOIN outdetail o on g.gid = o.gid
 GROUP by g.gid,g.gname,g.spec,g.price
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(i.inamt)
from goods g INNER JOIN indetail i on g.gid = i.gid
 and i.month = '2017��5��'
 GROUP by g.gid,g.gname,g.spec
 ORDER by  SUM(i.inamt) DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price) as '�ܽ��'
from outdetail o INNER JOIN dept d ON o.deptno = d.deptno
  INNER JOIN goods g ON o.gid = g.gid
 AND o.month = '2017��6��'
 GROUP by d.dname
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1  g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o on g.gid = o.gid
and o.month = '2017��6��'
GROUP by g.gid,g.gname,g.spec
order BY SUM(o.outamt) DESC 
--6.	���±���500g�Ĺ��ӣ�5�·������������10
update indetail SET inamt = inamt + 10 WHERE month = '2017��5��' AND gid = 
         (SELECT gid from goods g WHERE g.gname='����' AND g.spec='500g')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE month ='2017��5��' AND deptno = 
	(SELECT deptno from dept where dname='�豸��')
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,SUM(o.outamt*g.price) as '�ܽ��'
from outdetail o INNER JOIN dept d ON o.deptno = d.deptno
  INNER JOIN goods g ON o.gid = g.gid
 GROUP by d.dname
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o on g.gid = o.gid
  INNER JOIN dept d on o.deptno = d.deptno
  and d.dname ='����'
  GROUP by g.gid,g.gname,g.spec
  order by SUM(o.outamt) DESC 
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
SELECT d.dname, o.month
from goods g INNER JOIN outdetail o on g.gid = o.gid
  INNER JOIN dept d on o.deptno = d.deptno
  AND g.gname='����' AND g.spec='������'
 and EXISTS 
	(SELECT *
	from goods g INNER JOIN outdetail m on g.gid = m.gid
	  INNER JOIN dept n on m.deptno = n.deptno
	  AND g.gname='���' AND g.spec='����' AND n.dname=d.dname AND m.month=o.month)
  
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 d.dname,SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid
 INNER JOIN dept d on o.deptno = d.deptno
 and g.gname ='���'
 GROUP by d.dname
 ORDER by SUM(o.outamt) DESC 
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT TOP 1 i.month,SUM(i.inamt*g.price)
from indetail i INNER JOIN goods g on i.gid = g.gid
group by i.month
ORDER by  SUM(i.inamt*g.price) DESC 
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
SELECT SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid
 INNER JOIN dept d ON o.deptno = d.deptno
 and g.price <10
 and d.dname ='����'
 
