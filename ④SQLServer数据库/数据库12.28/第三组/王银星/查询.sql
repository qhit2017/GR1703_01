
--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 a.gname ,a.price
FROM goods a
ORDER BY a.price DESC
--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT  a.gid,a.gname,b.inamt,SUM(b.inamt)AS '总金额' 
FROM goods a INNER JOIN indetail b ON a.gid =b.gid
GROUP BY a.gid,a.gname,b.inamt
--3.	查询2017年5月份，哪个商品入库数量最多
SELECT a.gname
FROM goods a
WHERE a.gid IN(SELECT a.gid FROM indetail a where a.inamt IN 
				(SELECT MAX(a.inamt) FROM indetail a WHERE a.month LIKE '2017年5月')) 
				
SELECT TOP 1 b.gname,b.spec
FROM indetail a INNER JOIN goods b ON a.gid =b.gid
WHERE a.month LIKE '2017年5月'
ORDER BY a.inamt DESC

SELECT TOP 1 a.gid ,a.gname ,a.spec ,SUM(b.inamt)
FROM goods a INNER JOIN indetail b ON a.gid =b.gid 
AND b.month ='2017年5月'
GROUP BY a.gid ,a.gname ,a.spec 
ORDER BY SUM(b.inamt)DESC 	
--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT c.dname ,SUM(a.outamt *b.price)AS '总金额' 
FROM outdetail a INNER JOIN goods b ON a.gid =b.gid
	INNER JOIN dept c ON a.deptno =c.deptno
    AND a.month = '2017年6月'
GROUP BY c.dname
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 a.gname
FROM goods a INNER JOIN indetail b ON a.gid =b.gid
WHERE b.month LIKE '2017年6月'
ORDER BY b.inamt DESC
--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt =(inamt +10)
				WHERE inid =(SELECT a.inid FROM indetail a INNER JOIN goods b ON a.gid =b.gid 
				WHERE b.spec LIKE '500g'AND b.gname LIKE '瓜子'AND a.month LIKE '2017年5月')
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE outid IN (SELECT b.outid FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno
										AND b.month LIKE '2017年5月'
										AND a.dname LIKE '设备部') 
--8.	查询每个部门领用的商品总金额是多少

--9.	查询财务部领用的哪个商品最多
SELECT TOP 1 c.gname
FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno 
INNER JOIN goods c ON b.gid =c.gid AND a.dname ='财务部'
ORDER BY b.outamt DESC
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？
SELECT a.month
FROM outdetail a INNER JOIN dept b ON a.deptno =b.deptno 
GROUP BY a.month

--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT a.month,b.gname,sum(a.inamt *b.price) 
FROM indetail a INNER JOIN goods b ON a.gid =b.gid
group BY a.month,b.gname, (a.inamt *b.price)
--13.	查询单价小于10元的商品，财务部领用的数量是多少？ 
SELECT SUM(b.outamt) AS '数量'
FROM dept a INNER JOIN outdetail b ON a.deptno =b.deptno AND a.dname ='财务部'
AND b.gid IN (SELECT a.gid FROM goods a WHERE a.price <10)
