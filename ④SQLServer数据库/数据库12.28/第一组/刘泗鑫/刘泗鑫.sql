--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname,g.price
from goods g
GROUP BY g.gname,g.price
ORDER BY g.price DESC

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname,SUM(i.inamt)-SUM(o.outamt) AS '库存',(SUM(i.inamt) - SUM(o.outamt))*g.price AS '总金额'
from goods g INNER JOIN indetail i ON g.gid = i.gid INNER JOIN outdetail o ON g.gid = o.gid
GROUP BY g.gname,g.price

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 i.inamt
from indetail i
WHERE i.month = '2017年5月'
ORDER BY i.inamt DESC

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT o.deptno,SUM(o.outamt*CAST(g.price AS int)) AS '总金额'
from outdetail o INNER JOIN goods g ON o.gid = g.gid INNER JOIN indetail i ON g.gid = i.gid
AND o.month = '2017年6月'
GROUP BY o.deptno

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 g.gname,COUNT(o.outamt) AS '数量最多'
from outdetail o INNER JOIN goods g ON o.gid = g.gid
AND o.month = '2017年6月'
GROUP BY g.gname
ORDER BY COUNT(o.outamt) DESC

--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt = (inamt + 10) WHERE gid = (
		SELECT g.gid from goods g INNER JOIN indetail i ON g.gid = i.gid
		AND i.month = '2017年5月' AND g.gname = '瓜子' AND g.spec = '500g')

--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE outamt IN(
		SELECT o.outamt
		FROM outdetail o INNER JOIN dept d ON o.deptno = d.deptno
		AND o.month = '2017年5月')

--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*CAST(g.price AS int)) AS '总金额'
FROM goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
GROUP BY d.dname

--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gname,SUM(o.outamt) AS '领用'
FROM goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
AND d.dname = '财务部'
GROUP BY g.gid,g.gname
ORDER BY SUM(o.outamt)DESC

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT d.dname,o.month
from goods g INNER JOIN outdetail o ON g.gid = o.gid INNER JOIN dept d ON o.deptno = d.deptno
AND g.gname = '奥利奥饼干' AND g.gname = '美心面包'
AND EXISTS (
	SELECT * 
	FROM goods g INNER JOIN outdetail m ON g.gid = m.gid INNER JOIN dept n ON m.deptno = n.deptno
	AND g.gname = '面包' AND g.spec = '美心' AND n.dname = d.dname AND m.month = o.month )

