SELECT *
FROM EMP 

SELECT *
FROM DEPT

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT  a.JOB AS'����' , MAX(a.SAL)AS '���нˮ',MIN(a.SAL)AS '���нˮ',AVG(a.SAL)AS 'ƽ��нˮ'   
FROM EMP a
group BY a.JOB 
--2.��ѯ��SMITH�����쵼���� 
SELECT a.ENAME
FROM EMP a
where a.ENAME LIKE 'SMITH'
--3.��ѯ��˾����Ա���ĸ��� 
SELECT COUNT(*)AS '����' 
FROM EMP a
--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT  MAX(a.SAL)AS '���нˮ'
FROM EMP a
--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT  AVG(a.SAL)AS 'ƽ������'
FROM EMP a
--6.��ѯ��˾��������ְ��ʱ�� 
SELECT MAX(a.HIREDATE) 
FROM EMP a
--7.��ѯ��˾���н�������� 
SELECT COUNT(a.COMM) AS '����'
FROM EMP a
where a.COMM>0 
--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(a.SAL)
FROM EMP a
WHERE a.DEPTNO='20' 
--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT  MAX(a.SAL) 
FROM EMP a
WHERE a.ENAME LIKE '%A%'
--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT a.JOB AS'��λ', MAX(a.SAL )AS'���нˮ',MIN(a.SAL)AS'���нˮ'  
FROM EMP a
GROUP BY a.JOB 
HAVING AVG(a.SAL)>1000
--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT a.JOB AS'��λ',AVG(a.SAL)AS'ƽ��нˮ',a.DEPTNO AS'���ű��'
FROM EMP a
GROUP BY a.JOB ,a.DEPTNO
HAVING AVG(a.SAL)>2000
--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 
SELECT a.JOB AS '����' ,AVG(a.SAL)AS 'ƽ��нˮ',a.DEPTNO AS '���ű��' ,a.ENAME AS '����' 
FROM EMP a
where a.ENAME LIKE '%A%'
GROUP BY a.JOB,a.DEPTNO,a.ENAME
HAVING AVG(a.SAL)>1500
ORDER BY AVG(a.SAL)DESC 
--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL >1600
--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT a.ENAME ,a.DEPTNO
FROM EMP a
WHERE a.EMPNO =17
--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL NOT BETWEEN 4000 AND 5000
--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT a.ENAME ,a.DEPTNO
FROM EMP a
WHERE a.DEPTNO=20 OR a.DEPTNO =30
--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT a.ENAME ,a.JOB
FROM EMP a
where a.MGR IS NULL
ORDER BY a.JOB
--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT a.ENAME ,a.SAL ,a.COMM
FROM EMP a
where a.COMM>=0
ORDER BY a.SAL DESC
--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT a.ENAME
FROM EMP a
WHERE a.ENAME LIKE '__A%'
--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT  a.DNAME ,a.LOC,b.ENAME,a.DEPTNO 
FROM DEPT a,EMP b
where a.DEPTNO =b.DEPTNO

SELECT a.DNAME ,a.LOC
FROM DEPT a
--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT DISTINCT a.JOB
FROM EMP a
GROUP BY a.JOB
--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT a.ENAME,a.JOB ,a.SAL,
'������:'+a.ENAME +',ְλ�ǣ�'+a.JOB +',нˮ�ǣ�'+CAST(a.SAL AS nvarchar )  AS '���'
FROM EMP a
--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
SELECT a.EMPNO ,a.ENAME ,a.SAL,a.SAL *1.2 AS '������߰ٷ�֮20'
FROM EMP a
--24.��ѯԱ���������͹������������޶�Ϊ�������������1200�����Ҳ�ѯ�������ְʱ�������������ְ��Ա������ǰ�� 
SELECT a.ENAME ,a.SAL
FROM EMP a
WHERE a.SAL >1200
ORDER BY a.HIREDATE ASC
--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DISTINCT  a.JOB
FROM EMP a
WHERE a.JOB NOT LIKE 'ACCOUNTING'
--26.�ѹ�Ա�����ŷ��飬�����нˮ�����ź� Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա����
-- ���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
HAVING AVG(a.SAL)>3000 
ORDER BY a.DEPTNO DESC