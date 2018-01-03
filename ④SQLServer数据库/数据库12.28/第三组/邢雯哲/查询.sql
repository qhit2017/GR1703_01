--1.	查询单价最高的商品名称、商品价格

SELECT (g.gname) as '商品名称',(g.price) as '商品价格'
from goods g
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT i.inamt
from indetail i
WHERE i.inamt=20
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT MAX(i.inamt)
from indetail i
WHERE i.month='2017年5月份'

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT *
from dept d INNER JOIN goods c ON d.deptno=c.gid

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT MAX(o.outamt) as'出库最多'
from outdetail o
WHERE o.month='2017年6月份'

--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE goods SET gname=''

--7.	将设备部2017年5月份 的出库记录给删除

--8.	查询每个部门领用的商品总金额是多少
SELECT SUM(d.deptno),d.dname
from dept d INNER JOIN outdetail o ON d.deptno=o.outid
HAVING d.dname='财务部'

--9.	查询财务部领用的哪个商品最多

SELECT max (g.gname) as'最多的商品'
from dept d INNER JOIN goods g ON d.deptno=g.gid
WHERE d.dname='财务部'

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT d.dname
from dept d
where d.dname='奥利奥'OR d.dname='美心面包'

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多

--12.	查询哪个月份商品入库的总金额最多，总金额是多少？

--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 

