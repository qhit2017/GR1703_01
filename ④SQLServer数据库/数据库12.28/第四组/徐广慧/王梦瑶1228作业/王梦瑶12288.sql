--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname ,g.price 
from goods g 
ORDER BY g.price DESC 

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname ,SUM  (i.inamt -o.outamt) as '当前库存' ,(SUM  (i.inamt -o.outamt)*g.price )as '总金额'
from goods g INNER JOIN indetail i ON g.gid =i.gid 
INNER JOIN outdetail o ON g.gid =o.gid 
GROUP BY g.gname ,g.price
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname 
from goods g INNER JOIN indetail i ON g.gid =i.gid 
AND i.month ='2017年5月'
GROUP BY g.gname 
ORDER BY SUM (i.inamt ) DESC 

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT   d.dname ,sum(o.outamt*g.price ) as '商品总金额'
from outdetail o INNER JOIN dept d ON o.deptno=d.deptno 
INNER JOIN goods g ON g.gid =o.gid 
AND o.month ='2017年6月'
GROUP BY  d.dname

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1  g.gname 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
and o.month ='2017年6月' 
GROUP BY g.gname
ORDER BY SUM (o.outamt ) DESC 
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE  indetail SET inamt =(inamt +10) WHERE gid IN  
(SELECT g.gid
from goods g INNER JOIN indetail i ON g.gid=i.gid 
AND i.month ='2017年5月'
AND g.spec='500g')
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM goods WHERE gid IN 
(SELECT  g.gid 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno
AND d.dname ='设备部'
AND o.month ='2017年5月')
--8.	查询每个部门领用的商品总金额是多少
SELECT   d.dname ,sum(o.outamt*g.price ) as '商品总金额'
from outdetail o INNER JOIN dept d ON o.deptno=d.deptno 
INNER JOIN goods g ON g.gid =o.gid 
GROUP BY  d.dname

--9.	查询财务部领用的哪个商品最多
SELECT  g.gname ,SUM (o.outamt)
from goods g INNER JOIN outdetail o ON g.gid =o.gid
INNER JOIN dept d ON o.deptno=d.deptno
AND d.dname='财务部'
GROUP BY g.gid , g.gname 
ORDER BY SUM (o.outamt) DESC  
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？

SELECT o.month ,g.gid ,d.deptno 
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno 
AND  g.gname IN ('饼干','面包')
AND g.spec IN ('奥利奥','美心')
GROUP BY o.month ,g.gid ,d.deptno 
HAVING COUNT(g.gid )=2 

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 d.dname  
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno =d.deptno
AND g.gname ='面包'
GROUP BY d.deptno ,d.dname
ORDER BY SUM (o.outamt )  DESC 

--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
 SELECT top 1 i.month,SUM(i.inamt*g.price)
 FROM  goods g INNER JOIN indetail i  ON g.gid =i.gid
 GROUP BY i.month 
 ORDER BY SUM(i.inamt*g.price)  DESC 
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
SELECT SUM(o.outamt) as '数量'
from goods g INNER JOIN outdetail o ON g.gid =o.gid 
INNER JOIN dept d ON o.deptno=d.deptno
AND g.price >10
AND d.dname ='财务部'











SELECT * FROM indetail 
SELECT * FROM goods 
SELECT * FROM outdetail 
SELECT * FROM dept 
