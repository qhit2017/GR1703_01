SELECT *
FROM goods

SELECT  *
from indetail 

SELECT *
FROM outdetail 
--1.	查询单价最高的商品名称、商品价格
SELECT gname ,price 
from goods 
WHERE  price IN  (SELECT TOP 1 g.price from goods g ORDER BY g.price)
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT i.iname-o.outamt AS '当前库存 ',SUM((i.iname-o.outamt)*g.price) AS '总金额'
from goods g INNER JOIN indetail i ON g.gid=i.gid INNER JOIN outdetail o
 ON i.gid=o.gid
 GROUP BY g.gid,i.iname-o.outamt
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT  b.gname
from indetail a INNER JOIN goods b ON a.gid=b.gid
WHERE iname IN (SELECT MAX(i.iname)   from indetail i WHERE i.month IN ('2017年5月')
) ORDER BY a.iname DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.deptno ,SUM(g.price) AS '总金额'
from  outdetail o INNER JOIN dept d ON d.deptno=o.deptno 
INNER JOIN goods g ON g.gid=o.gid
WHERE o.month IN ('2017年6月')
GROUP BY d.deptno 
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT g.gname
from outdetail o INNER JOIN goods g ON g.gid =o.gid 
where o.month ='2017年6月' AND o.outamt=(SELECT MAX(a.outamt)  from outdetail a)
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET iname=iname+10 WHERE gid IN  (SELECT g.gid  from goods g INNER JOIN 
indetail i ON i.gid=g.gid WHERE g.spec='500g' AND g.gname='瓜子')
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM  outdetail   WHERE outid  IN (SELECT  o.outid from dept d INNER JOIN outdetail o
ON o.deptno=d.deptno WHERE d.dname='设备部'AND o.month IN ('2017年5月')) 
--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,sum(o.outamt*CAST(g.price AS  int)) AS '总金额'
from dept d INNER JOIN outdetail o ON d.deptno=o.deptno
INNER JOIN goods g ON g.gid =o.gid
GROUP BY d.dname
--9.	查询财务部领用的哪个商品最多
SELECT g.gname
from dept d INNER JOIN outdetail o ON o.deptno=d.deptno 
INNER JOIN  goods g ON g.gid=o.gid
WHERE    d.dname='财务部'AND o.outamt=(SELECT  MAX(b.outamt)  from outdetail b )
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
