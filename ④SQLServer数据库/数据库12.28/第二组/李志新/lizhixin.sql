SELECT *
FROM goods

SELECT  *
from indetail 

SELECT *
FROM outdetail 
--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT gname ,price 
from goods 
WHERE  price IN  (SELECT TOP 1 g.price from goods g ORDER BY g.price)
--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT i.iname-o.outamt AS '��ǰ��� ',SUM((i.iname-o.outamt)*g.price) AS '�ܽ��'
from goods g INNER JOIN indetail i ON g.gid=i.gid INNER JOIN outdetail o
 ON i.gid=o.gid
 GROUP BY g.gid,i.iname-o.outamt
--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT  b.gname
from indetail a INNER JOIN goods b ON a.gid=b.gid
WHERE iname IN (SELECT MAX(i.iname)   from indetail i WHERE i.month IN ('2017��5��')
) ORDER BY a.iname DESC 
--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.deptno ,SUM(g.price) AS '�ܽ��'
from  outdetail o INNER JOIN dept d ON d.deptno=o.deptno 
INNER JOIN goods g ON g.gid=o.gid
WHERE o.month IN ('2017��6��')
GROUP BY d.deptno 
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT g.gname
from outdetail o INNER JOIN goods g ON g.gid =o.gid 
where o.month ='2017��6��' AND o.outamt=(SELECT MAX(a.outamt)  from outdetail a)
--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET iname=iname+10 WHERE gid IN  (SELECT g.gid  from goods g INNER JOIN 
indetail i ON i.gid=g.gid WHERE g.spec='500g' AND g.gname='����')
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM  outdetail   WHERE outid  IN (SELECT  o.outid from dept d INNER JOIN outdetail o
ON o.deptno=d.deptno WHERE d.dname='�豸��'AND o.month IN ('2017��5��')) 
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT d.dname,sum(o.outamt*CAST(g.price AS  int)) AS '�ܽ��'
from dept d INNER JOIN outdetail o ON d.deptno=o.deptno
INNER JOIN goods g ON g.gid =o.gid
GROUP BY d.dname
--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT g.gname
from dept d INNER JOIN outdetail o ON o.deptno=d.deptno 
INNER JOIN  goods g ON g.gid=o.gid
WHERE    d.dname='����'AND o.outamt=(SELECT  MAX(b.outamt)  from outdetail b )
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
--13.	��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣� 
