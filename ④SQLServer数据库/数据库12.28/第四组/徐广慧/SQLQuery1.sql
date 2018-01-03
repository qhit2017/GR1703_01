
--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 gname,price 
from goods
ORDER BY price DESC 
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT a.gname,a.price,SUM(a.price*b.inamt) 
from goods a INNER JOIN indetail b ON a.gid =b.gid
GROUP BY a.gname,a.price
ORDER BY SUM(a.price*b.inamt) 


--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 a.gname
from goods a INNER JOIN indetail b ON a.gid =b.gid
WHERE b.month='2017年5月'
ORDER BY b.inamt DESC 


--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT c.dname,SUM(b.outamt*d.price) 
from  outdetail b  INNER JOIN dept c ON b.deptno=c.deptno INNER JOIN goods d ON b.gid=d.gid
WHERE b.month='2017年6月'
GROUP BY c.dname
 



--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 b.gname
from outdetail a INNER JOIN goods b ON a.gid=b.gid
where a.month='2017年6月'

ORDER BY  a.outamt DESC 


--6.	更新表，将500g的瓜子，5月份入库数量均加10
SELECT a.gname,inamt=(inamt+10)
from goods a INNER JOIN  indetail b  ON a.gid=b.gid 
WHERE a.gname='瓜子' AND b.month='2017年5月'




--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE month='2017年5月' AND deptno =(SELECT a.deptno from dept  a WHERE dname ='设备部')



--8.	查询每个部门领用的商品总金额是多少
SELECT c.dname,SUM (b.outamt*a.price)
from goods a INNER JOIN outdetail b ON a.gid=b.gid INNER JOIN  dept c ON b.deptno=c.deptno
GROUP BY c.dname
ORDER BY SUM (b.outamt*a.price)
--9.	查询财务部领用的哪个商品最多
SELECT SUM(a.outamt),c.dname 
from outdetail a INNER JOIN dept c ON a.deptno=c.deptno
WHERE c.dname='财务部'
GROUP BY c.dname
ORDER BY SUM(a.outamt)  DESC 



--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT b.dname
from outdetail a INNER JOIN dept b ON a.deptno=b.deptno INNER JOIN goods c ON a.gid=c.gid
WHERE c.gname ='奥利奥饼干'AND c.gname='美心面包'
GROUP BY b.dname



--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 c.dname ,SUM(b.outamt)  
from goods  a INNER JOIN outdetail b ON a.gid=b.gid INNER JOIN dept c ON b.deptno=c.deptno
WHERE a.gname='面包'
GROUP BY c.dname
ORDER BY SUM(b.outamt)  DESC



--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT TOP 1 b.month,SUM(a.price*b.inamt) 
from goods a INNER JOIN indetail b ON a.gid=b.gid
GROUP BY b.month
ORDER BY SUM(a.price*b.inamt) DESC  

--13.	查询单价小于10元的商品，财务部领用的数量是多少？
SELECT SUM(a.outamt) 
from outdetail a INNER JOIN dept c ON a.deptno=c.deptno INNER JOIN goods  b ON a.gid=b.gid 
WHERE b.price<10
 
 
