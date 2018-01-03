
--1.	查询单价最高的商品名称、商品价格					
SELECT TOP 1 a.gname,a.price
FROM goods a
GROUP BY a.gname,a.price
ORDER BY a.price desc

--2.	查询每个商品的当前库存是多少，总金额是多少    

SELECT  g.gname ,g.spec,sum(i.inamt)-SUM(o.outamt) as '库存' ,SUM(i.inamt*CAST(g.price AS int)) as '总金额'
from indetail i INNER JOIN goods g ON i.gid=g.gid
INNER JOIN outdetail o ON o.gid=g.gid
GROUP BY g.gname,g.spec

--3.	查询2017年5月份，哪个商品入库数量最多    
SELECT top 1 g.gname,sum(a.inamt) as '商品数量'
from indetail a INNER JOIN goods g ON a.gid=g.gid
AND a.month='2017年5月'
GROUP BY g.gname
ORDER BY sum(a.inamt) desc


--4.	查询2017年6月份，每个部门领用的商品总金额是多少  
SELECT  o.deptno,sum(o.outamt) as '领用商品数量' ,sum(o.outamt*CAST(g.price AS int)) as '总金额'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
AND o.month='2017年6月'
GROUP BY o.deptno

 
--5.	查询2017年6月份，哪个商品出库的数量最多     
SELECT top 1 g.gname, sum(o.outamt) as '出库商品数量'
from outdetail o INNER JOIN goods g ON o.gid=g.gid
WHERE o.month='2017年6月'
GROUP BY g.gname
ORDER BY sum(o.outamt) desc

--6.	更新表，将500g的瓜子，5月份入库数量均加10   
SELECT (i.inamt+10) as '入库数量'
from goods g INNER JOIN indetail i ON g.gid=i.gid
AND g.spec='500g'
and g.gname='瓜子'
AND i.month='2017年5月'

--7.	将设备部2017年5月份 的出库记录给删除  
SELECT *
from dept d INNER JOIN outdetail o ON d.deptno=o.deptno
where d.dname='设备部'
DELETE  from outdetail  where month='2017年5月'

--8.	查询每个部门领用的商品总金额是多少  
SELECT o.deptno ,sum(o.outamt) as '领用数量' ,sum(o.outamt*CAST(g.price as int)) as '商品总金额'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
GROUP BY o.deptno


--9.	查询财务部领用的哪个商品最多 
SELECT TOP 1 o.deptno,g.gname,sum(o.outamt) as'数量'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND d.dname='财务部'
GROUP BY o.deptno,g.gname
ORDER BY sum(o.outamt) DESC

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？ 
SELECT d.dname
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno = o.deptno
AND g.spec IN ('奥利奥','美心' )
AND o.month=o.month
GROUP BY d.dname

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多 
SELECT TOP 1 d.dname,sum(o.outamt) as '所有面包数量'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND g.gname='面包'
GROUP BY d.dname
ORDER BY sum(o.outamt) desc


--12.	查询哪个月份商品入库的总金额最多，总金额是多少？  
SELECT TOP 1 i.month,sum(i.inamt*CAST(g.price AS int)) as '总金额'
from goods g INNER JOIN indetail i ON g.gid=i.gid
GROUP BY i.month
ORDER BY sum(i.inamt*CAST(g.price AS int)) DESC

--13.	查询单价小于10元的商品，财务部领用的数量是多少？  
SELECT  sum(o.outamt) as '领用数量'
from goods g INNER JOIN outdetail o ON g.gid=o.gid
INNER JOIN dept d ON d.deptno=o.deptno
AND g.price<10
AND d.dname='财务部'
 