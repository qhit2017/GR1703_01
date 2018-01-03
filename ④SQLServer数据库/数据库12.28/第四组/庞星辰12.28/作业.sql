SELECT * FROM goods

--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
select TOP 1 a.price ,a.gname
from goods a
GROUP BY a.price,a.gname
ORDER BY a.price DESC 

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
select COUNT(a.inamt-s.outamt) as '��ǰ���',(COUNT(a.inamt-s.outamt)*c.price) as '�ܽ��'
from indetail a INNER JOIN outdetail s ON a.gid=s.gid
INNER JOIN goods c ON s.gid = c.gid
GROUP BY c.gname,c.price 

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
select  top 1 s.gname
from indetail a INNER JOIN goods s ON a.gid=s.gid
and a.month='2017��5��'
GROUP BY s.gname
ORDER BY count(a.inamt) desc

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
select d.dname,sum(o.outamt*s.price)
from indetail a INNER JOIN goods s ON a.gid=s.gid
 INNER JOIN outdetail o ON s.gid=o.gid
 INNER JOIN dept d ON d.deptno=o.deptno
 AND a.month='2017��6��'
 GROUP  BY d.dname

--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
select TOP 1 s.gname
from outdetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month ='2017��6��'
GROUP BY s.gname,s.gid
ORDER BY COUNT(a.outamt)  DESC 

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt = (inamt +10) WHERE gid IN 
	(select a.gid from goods a INNER JOIN indetail s ON a.gid=s.gid AND s.month='2017��5��' where a.spec='500g')

--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM  outdetail  WHERE outamt IN   
(SELECT a.outamt from outdetail a INNER JOIN dept s ON a.deptno=s.deptno WHERE a.month='2017��5��' AND s.dname='�豸��')

--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
select t.dname,SUM(s.price) as '�ܽ��'
from indetail a INNER JOIN goods s ON a.gid=s.gid 
                INNER JOIN outdetail c ON c.gid=s.gid
                INNER JOIN dept t ON c.deptno=t.deptno
                GROUP BY t.dname

--9.	��ѯ�������õ��ĸ���Ʒ���
select  g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno 
AND d.dname='����'
GROUP BY  g.gid,g.gname,g.spec
ORDER BY  SUM(o.outamt) DESC

--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��


--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������

--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�

--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
