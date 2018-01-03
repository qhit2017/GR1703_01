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

--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 gname,price
from goods
order BY price DESC

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname,SUM(i.inamt)-sum(o.outnamt),SUM(i.inamt)*g.price-sum(o.outnamt)*g.price
from goods g INNER JOIN indetail i on g.gid=i.gid
	INNER JOIN outdetail o on o.gid=g.gid 
GROUP BY g.gname,g.price
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname
from goods g INNER JOIN indetail i on i.gid=g.gid
WHERE i.month='2017年5月'
GROUP BY g.gname
ORDER BY SUM(i.inamt)  DESC

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outnamt*g.price)
from outdetail o INNER JOIN dept d on o.detpno=d.deptno
	INNER JOIN goods g ON g.gid=o.gid
	AND o.month='2017年6月'
GROUP BY d.dname

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 g.gname
from outdetail o INNER JOIN goods g ON g.gid=o.gid
WHERE o.month='2017年6月'
GROUP BY g.gname
ORDER BY COUNT(*) desc
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt=inamt+10 WHERE gid=(SELECT g.gid from goods g INNER JOIN indetail i ON i.gid=g.gid WHERE i.month='2017年5月'AND g.spec ='500g')
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE outid in( SELECT o.outid
from outdetail o INNER JOIN dept d on d.deptno=o.detpno
and o.month='2017年5月' AND d.dname='设备部')
--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outnamt*g.price)
from outdetail o INNER JOIN dept d on o.detpno=d.deptno
	INNER JOIN goods g ON g.gid=o.gid
GROUP BY d.dname
--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gname
from outdetail o INNER JOIN dept d on d.deptno= o.detpno INNER JOIN goods g on g.gid= o.gid
AND d.dname='财务部'
GROUP BY g.gname
ORDER BY count(*) DESC

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT d.dname,o.month
from goods g INNER JOIN outdetail o on o.gid=g.gid INNER JOIN dept d on d.deptno =o.detpno
AND g.gname='饼干'and g.spec='奥利奥'
and EXISTS
	(SELECT * FROM goods a INNER JOIN outdetail b on a.gid=b.gid INNER JOIN dept c on c.deptno =b.detpno
	AND a.gname='面包' and a.spec='美心'
	AND b.month=o.month AND c.dname=d.dname)

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多

SELECT top 1 d.dname
from outdetail o INNER JOIN dept d on d.deptno=o.detpno INNER JOIN goods g on g.gid =o. gid AND g.gname='面包'
GROUP BY o.detpno,d.dname
ORDER BY COUNT(*) DESC 
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT TOP 1 i.month,sum(g.price*i.inamt)
from goods g INNER JOIN indetail i on i.gid=g.gid
GROUP BY i.month
ORDER BY sum(g.price*i.inamt) DESC


--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 

SELECT SUM(o.outnamt) 
from goods g INNER JOIN outdetail o on o.gid=g.gid INNER JOIN dept d on d.deptno=o.detpno
and g.price<10 AND d.dname='财务部'
