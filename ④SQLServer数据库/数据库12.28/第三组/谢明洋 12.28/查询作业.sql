--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname,g.price
from goods g
ORDER BY g.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname,SUM(i.inamt)
from goods g INNER JOIN indetail i ON g.gid=i.gid
GROUP BY g.gname
ORDER BY SUM(i.inamt) DESC
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price)
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON o.deptno=d.deptno
AND o.month='2017年6月'
GROUP BY d.dname
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 g.gname
from goods g INNER JOIN outdetail o ON
g.gid=o.gid
AND o.month='2017年6月'
GROUP BY g.gname
ORDER BY SUM(o.outamt) DESC
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET  inamt=inamt+10 WHERE month='2017年5月' AND gid=(SELECT gid FROM goods WHERE spec='500g' AND gname='瓜子')
SELECT * FROM indetail
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE month='2017年5月' AND deptno=(SELECT d.deptno from dept d WHERE d.dname='设备部')
--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price) as '总金额'
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
GROUP BY d.dname
--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gname
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
and d.dname='财务部'
GROUP BY g.gname
ORDER BY SUM(o.outamt) DESC
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 d.dname
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
GROUP BY d.dname 
ORDER BY SUM(o.outamt) DESC
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT TOP 1 i.month,SUM(i.inamt*g.price)
from goods g INNER JOIN indetail i ON g.gid=i.gid 
GROUP BY i.month
ORDER BY SUM(i.inamt*g.price) DESC
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
SELECT SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid=o.gid INNER JOIN dept d ON o.deptno=d.deptno
AND g.price<10 AND d.dname='财务部'

