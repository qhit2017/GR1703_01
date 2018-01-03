--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname,g.price
from goods g 
order by g.price DESC 
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gid,g.gname,g.spec,g.price,SUM(i.inamt)-SUM(o.outamt) as '库存数',
   (SUM(i.inamt)-SUM(o.outamt))*g.price as '总金额'
from goods g INNER JOIN indetail i on g.gid = i.gid
 INNER JOIN outdetail o on g.gid = o.gid
 GROUP by g.gid,g.gname,g.spec,g.price
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(i.inamt)
from goods g INNER JOIN indetail i on g.gid = i.gid
 and i.month = '2017年5月'
 GROUP by g.gid,g.gname,g.spec
 ORDER by  SUM(i.inamt) DESC 
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price) as '总金额'
from outdetail o INNER JOIN dept d ON o.deptno = d.deptno
  INNER JOIN goods g ON o.gid = g.gid
 AND o.month = '2017年6月'
 GROUP by d.dname
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1  g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o on g.gid = o.gid
and o.month = '2017年6月'
GROUP by g.gid,g.gname,g.spec
order BY SUM(o.outamt) DESC 
--6.	更新表，将500g的瓜子，5月份入库数量均加10
update indetail SET inamt = inamt + 10 WHERE month = '2017年5月' AND gid = 
         (SELECT gid from goods g WHERE g.gname='瓜子' AND g.spec='500g')
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE month ='2017年5月' AND deptno = 
	(SELECT deptno from dept where dname='设备部')
--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price) as '总金额'
from outdetail o INNER JOIN dept d ON o.deptno = d.deptno
  INNER JOIN goods g ON o.gid = g.gid
 GROUP by d.dname
--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gid,g.gname,g.spec,SUM(o.outamt)
from goods g INNER JOIN outdetail o on g.gid = o.gid
  INNER JOIN dept d on o.deptno = d.deptno
  and d.dname ='财务部'
  GROUP by g.gid,g.gname,g.spec
  order by SUM(o.outamt) DESC 
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT d.dname, o.month
from goods g INNER JOIN outdetail o on g.gid = o.gid
  INNER JOIN dept d on o.deptno = d.deptno
  AND g.gname='饼干' AND g.spec='奥利奥'
 and EXISTS 
	(SELECT *
	from goods g INNER JOIN outdetail m on g.gid = m.gid
	  INNER JOIN dept n on m.deptno = n.deptno
	  AND g.gname='面包' AND g.spec='美心' AND n.dname=d.dname AND m.month=o.month)
  
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 d.dname,SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid
 INNER JOIN dept d on o.deptno = d.deptno
 and g.gname ='面包'
 GROUP by d.dname
 ORDER by SUM(o.outamt) DESC 
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT TOP 1 i.month,SUM(i.inamt*g.price)
from indetail i INNER JOIN goods g on i.gid = g.gid
group by i.month
ORDER by  SUM(i.inamt*g.price) DESC 
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
SELECT SUM(o.outamt)
from goods g INNER JOIN outdetail o ON g.gid = o.gid
 INNER JOIN dept d ON o.deptno = d.deptno
 and g.price <10
 and d.dname ='财务部'
 
