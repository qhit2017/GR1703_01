--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 g.gname,g.price FROM goods g
ORDER BY g.price DESC;

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT g.gname AS '商品姓名' ,g.spec AS '商品品牌',SUM(i.inamt) AS '库存' ,SUM(i.inamt)*g.price AS '总额' 
FROM goods g INNER JOIN indetail i ON g.gid = i.gid
GROUP BY g.spec,g.gname,g.price,g.gid;

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 g.gname,g.spec
FROM goods g INNER JOIN indetail i ON g.gid = i.gid
AND i.month='2017年5月'
GROUP BY g.spec,g.gname,g.gid
ORDER BY SUM(i.inamt) DESC;

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price)
FROM outdetail o INNER JOIN dept d ON d.deptno = o.deptno INNER JOIN goods g ON g.gid = o.gid
AND o.month = '2017年6月'
GROUP BY d.dname;

--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 g.gname,g.spec,SUM(o.outamt)
FROM outdetail o INNER JOIN goods g ON g.gid = o.gid 
AND o.month = '2017年6月'
GROUP BY g.spec,g.gname,g.gid
ORDER BY SUM(o.outamt) DESC;

--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt = inamt+10 
WHERE month = '2017年5月' AND gid = (SELECT gid FROM goods WHERE spec = '500g');

--7.	7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail 
WHERE deptno = (SELECT deptno FROM dept WHERE dname = '设备部')
AND month = '2017年5月';

--8.	查询每个部门领用的商品总金额是多少
SELECT d.dname,SUM(o.outamt*g.price) 
FROM outdetail o INNER JOIN dept d ON d.deptno = o.deptno
	INNER JOIN goods g ON g.gid = o.gid
GROUP BY d.dname

--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 g.gname,g.spec
FROM dept d INNER JOIN outdetail o ON d.deptno = o.deptno
	INNER JOIN goods g ON g.gid = o.gid
AND d.dname = '财务部'
GROUP BY g.spec,g.gname
ORDER BY SUM(o.outamt) DESC;

--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT dname FROM dept 
WHERE deptno IN (
SELECT a.deptno FROM outdetail a 
WHERE EXISTS(
SELECT o.month,o.gid FROM outdetail o
WHERE o.gid IN (SELECT g.gid FROM goods g WHERE g.gname = '饼干' AND g.spec='奥利奥' OR g.gname = '面包' AND g.spec = '美心')
GROUP BY o.month,o.gid
HAVING COUNT(*)>1 AND a.gid = o.gid AND a.month = o.month)
GROUP BY a.deptno 
HAVING COUNT(*)>1)

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 d.dname
FROM outdetail o INNER JOIN goods g ON g.gid = o.gid 
	INNER JOIN dept d ON d.deptno = o.deptno
	AND g.gname = '面包'
	GROUP BY d.dname
	ORDER BY SUM(o.outamt);

--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT TOP 1 SUM(i.inamt*g.price)
FROM indetail i INNER JOIN goods g ON g.gid = i.gid
GROUP BY i.month
ORDER BY SUM(i.inamt*g.price) DESC

--13.	查询单价小于10元的商品，财务部领用的数量是多少？
SELECT SUM(outamt)
FROM goods g INNER JOIN outdetail ON g.gid = outdetail.gid 
	INNER JOIN dept d ON d.deptno = outdetail.deptno 
	AND g.price<10 AND d.dname = '财务部';
