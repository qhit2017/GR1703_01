select *
FROM goods G INNER JOIN indetail I ON G.gid=I.gid
	INNER JOIN outdetail O ON G.gid=O.gid 
	
SELECT *
FROM goods G INNER JOIN outdetail O ON G.gid=O.GID 	
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.spec IN('������','����')
	ORDER BY D.dname
--1.	��ѯ������ߵ���Ʒ���ơ���Ʒ�۸�
SELECT TOP 1 gname ,PRICE
FROM goods
ORDER BY price DESC

--2.	��ѯÿ����Ʒ�ĵ�ǰ����Ƕ��٣��ܽ���Ƕ���
SELECT G.gid,G.gname ,SUM(I.inamt)-SUM(O.outamt) AS '���',(SUM(I.inamt)-SUM(O.outamt))*(SELECT price FROM goods WHERE goods . gid =G.gid) AS '�ܽ��'
FROM goods G INNER JOIN indetail I ON G.gid=I.gid
	INNER JOIN outdetail O ON G.gid=O.gid 
	GROUP BY G.gid,G.gname 

--3.	��ѯ2017��5�·ݣ��ĸ���Ʒ����������
SELECT TOP 1 G.gid ,G.gname ,I.inamt
FROM goods G INNER JOIN indetail I ON G.gid = I.gid
WHERE I.month ='2017��5��' 
GROUP BY G.gid ,G.gname ,I.inamt 
ORDER BY I.inamt DESC

--4.	��ѯ2017��6�·ݣ�ÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT D.deptno,D.dname,SUM(G.price*O.outamt) AS'�ܽ��'
FROM outdetail O INNER JOIN dept D ON O.deptno=D.deptno
	INNER JOIN goods G ON G.GID = O.gid 
	AND O.month='2017��6��'
	GROUP BY D.deptno,D.dname
	
--5.	��ѯ2017��6�·ݣ��ĸ���Ʒ������������
SELECT TOP 1 G.gname
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
ORDER BY O. outamt 

--6.	���±���500g�Ĺ��ӣ�5�·������������10
UPDATE indetail SET inamt =inamt +10 WHERE MONTH ='2017��5��'
 AND gid IN (SELECT gid FROM goods WHERE gname ='����' and spec='500g')
 
--7.	���豸��2017��5�·� �ĳ����¼��ɾ��
DELETE FROM outdetail WHERE month ='2017��5��' AND outid IN
(SELECT outid FROM outdetail O INNER JOIN dept D ON O.deptno=D.deptno
	AND D.dNAME='�豸��' 
)
--8.	��ѯÿ���������õ���Ʒ�ܽ���Ƕ���
SELECT D.deptno,D.dname, SUM(G.price*O.outamt) AS '�ܽ��'
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	GROUP BY D.deptno,D.dname

--9.	��ѯ�������õ��ĸ���Ʒ���
SELECT TOP 1  G.gid , G.gname
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND D.dname='����'
	GROUP BY G.gid , G.gname
	ORDER BY SUM(O.outamt)
	
--10.	��ѯͬһ�������ù��������±��ɡ��͡�����������Ĳ�������Щ��

	SELECT D.dname
	FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	 INNER JOIN dept D ON D.deptno=O.deptno
	 AND G.spec='������'
	 AND EXISTS(SELECT * FROM goods G INNER JOIN outdetail O1 ON G.gid=O1.gid
	 INNER JOIN dept D1 ON D1.deptno=O.deptno AND G.SPEC='����' AND D.dname=D1.dNAME
	 AND O.month=O1.month
	 )
	 


	
	
	
--11.	��ѯ���(ָ��������Ʒ�Ƶ����) ���ĸ��������õ��������
SELECT TOP 1 D.dname, SUM(O.OUTAMT)
FROM goods G INNER JOIN outdetail O ON G.gid =O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.gname='���'
	GROUP BY D.dname 
	ORDER BY SUM(O.outamt) DESC
	
--12.	��ѯ�ĸ��·���Ʒ�����ܽ����࣬�ܽ���Ƕ��٣�
SELECT  TOP 1 I.month,SUM(G.price *I.inamt) AS'�ܽ��'
FROM  goods G INNER JOIN indetail I ON G.gid = I.gid
	GROUP BY I.month
	ORDER BY SUM(G.price *I.inamt) DESC
	

--13.   ��ѯ����С��10Ԫ����Ʒ���������õ������Ƕ��٣�
SELECT SUM(O.outamt)
FROM goods G INNER JOIN outdetail O ON G.gid=O.gid
	INNER JOIN dept D ON D.deptno=O.deptno
	AND G.price<10 AND D.dname='����'
