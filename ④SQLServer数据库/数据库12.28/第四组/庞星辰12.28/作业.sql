SELECT * FROM goods

--1.	查询单价最高的商品名称、商品价格
select TOP 1 a.price ,a.gname
from goods a
GROUP BY a.price,a.gname
ORDER BY a.price DESC 

--2.	查询每个商品的当前库存是多少，总金额是多少
select COUNT(a.inamt-s.outamt) as '当前库存',(COUNT(a.inamt-s.outamt)*c.price) as '总金额'
from indetail a INNER JOIN outdetail s ON a.gid=s.gid
INNER JOIN goods c ON s.gid = c.gid
GROUP BY c.gname,c.price 

--3.	查询2017年5月份，哪个商品入库数量最多
select  top 1 s.gname
from indetail a INNER JOIN goods s ON a.gid=s.gid
and a.month='2017年5月'
GROUP BY s.gname
ORDER BY count(a.inamt) desc

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
select d.dname,sum(o.outamt*s.price)
from indetail a INNER JOIN goods s ON a.gid=s.gid
 INNER JOIN outdetail o ON s.gid=o.gid
 INNER JOIN dept d ON d.deptno=o.deptno
 AND a.month='2017年6月'
 GROUP  BY d.dname

--5.	查询2017年6月份，哪个商品出库的数量最多
select TOP 1 s.gname
from outdetail a INNER JOIN goods s ON a.gid=s.gid
WHERE a.month ='2017年6月'
GROUP BY s.gname,s.gid
ORDER BY COUNT(a.outamt)  DESC 

--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt = (inamt +10) WHERE gid IN 
	(select a.gid from goods a INNER JOIN indetail s ON a.gid=s.gid AND s.month='2017年5月' where a.spec='500g')

--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM  outdetail  WHERE outamt IN   
(SELECT a.outamt from outdetail a INNER JOIN dept s ON a.deptno=s.deptno WHERE a.month='2017年5月' AND s.dname='设备部')

--8.	查询每个部门领用的商品总金额是多少
select t.dname,SUM(s.price) as '总金额'
from indetail a INNER JOIN goods s ON a.gid=s.gid 
                INNER JOIN outdetail c ON c.gid=s.gid
                INNER JOIN dept t ON c.deptno=t.deptno
                GROUP BY t.dname

--9.	查询财务部领用的哪个商品最多
select  g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno 
AND d.dname='财务部'
GROUP BY  g.gid,g.gname,g.spec
ORDER BY  SUM(o.outamt) DESC

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？


--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多

--12.	查询哪个月份商品入库的总金额最多，总金额是多少？

--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
