select *
FROM goods G INNER JOIN indetail I ON G.gid=I.gid
	INNER JOIN outdetail O ON G.gid=O.gid 
	
SELECT *
FROM goods G INNER JOIN outdetail O ON G.gid=O.GID 	
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.spec IN('奥利奥','美心')
	ORDER BY D.dname
--1.	查询单价最高的商品名称、商品价格
SELECT TOP 1 gname ,PRICE
FROM goods
ORDER BY price DESC

--2.	查询每个商品的当前库存是多少，总金额是多少
SELECT G.gid,G.gname ,SUM(I.inamt)-SUM(O.outamt) AS '库存',(SUM(I.inamt)-SUM(O.outamt))*(SELECT price FROM goods WHERE goods . gid =G.gid) AS '总金额'
FROM goods G INNER JOIN indetail I ON G.gid=I.gid
	INNER JOIN outdetail O ON G.gid=O.gid 
	GROUP BY G.gid,G.gname 

--3.	查询2017年5月份，哪个商品入库数量最多
SELECT TOP 1 G.gid ,G.gname ,I.inamt
FROM goods G INNER JOIN indetail I ON G.gid = I.gid
WHERE I.month ='2017年5月' 
GROUP BY G.gid ,G.gname ,I.inamt 
ORDER BY I.inamt DESC

--4.	查询2017年6月份，每个部门领用的商品总金额是多少
SELECT D.deptno,D.dname,SUM(G.price*O.outamt) AS'总金额'
FROM outdetail O INNER JOIN dept D ON O.deptno=D.deptno
	INNER JOIN goods G ON G.GID = O.gid 
	AND O.month='2017年6月'
	GROUP BY D.deptno,D.dname
	
--5.	查询2017年6月份，哪个商品出库的数量最多
SELECT TOP 1 G.gname
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
ORDER BY O. outamt 

--6.	更新表，将500g的瓜子，5月份入库数量均加10
UPDATE indetail SET inamt =inamt +10 WHERE MONTH ='2017年5月'
 AND gid IN (SELECT gid FROM goods WHERE gname ='瓜子' and spec='500g')
 
--7.	将设备部2017年5月份 的出库记录给删除
DELETE FROM outdetail WHERE month ='2017年5月' AND outid IN
(SELECT outid FROM outdetail O INNER JOIN dept D ON O.deptno=D.deptno
	AND D.dNAME='设备部' 
)
--8.	查询每个部门领用的商品总金额是多少
SELECT D.deptno,D.dname, SUM(G.price*O.outamt) AS '总金额'
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	GROUP BY D.deptno,D.dname

--9.	查询财务部领用的哪个商品最多
SELECT TOP 1  G.gid , G.gname
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND D.dname='财务部'
	GROUP BY G.gid , G.gname
	ORDER BY SUM(O.outamt)
	
--10.	查询同一个月领用过’奥利奥饼干’和’美心面包’的部门有哪些？

	SELECT D.dname
	FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	 INNER JOIN dept D ON D.deptno=O.deptno
	 AND G.spec='奥利奥'
	 AND EXISTS(SELECT * FROM goods G INNER JOIN outdetail O1 ON G.gid=O1.gid
	 INNER JOIN dept D1 ON D1.deptno=O.deptno AND G.SPEC='美心' AND D.dname=D1.dNAME
	 AND O.month=O1.month
	 )
	 


	
	
	
--11.	查询面包(指的是所有品牌的面包) 被哪个部门领用的数量最多
SELECT TOP 1 D.dname, SUM(O.OUTAMT)
FROM goods G INNER JOIN outdetail O ON G.gid =O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.gname='面包'
	GROUP BY D.dname 
	ORDER BY SUM(O.outamt) DESC
	
--12.	查询哪个月份商品入库的总金额最多，总金额是多少？
SELECT  TOP 1 I.month,SUM(G.price *I.inamt) AS'总金额'
FROM  goods G INNER JOIN indetail I ON G.gid = I.gid
	GROUP BY I.month
	ORDER BY SUM(G.price *I.inamt) DESC
	

--13.   查询单价小于10元的商品，财务部领用的数量是多少？
SELECT SUM(O.outamt)
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.price<10 AND D.dname='财务部'
