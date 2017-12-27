
SELECT * from EMP
SELECT * FROM DEPT

--1.��ѯ�����ŵ����нˮ�����нˮ��ƽ��нˮ��. 
SELECT MAX(SAL),MIN(SAL),AVG(SAL)
FROM EMP
GROUP BY DEPTNO

--2.��ѯ��SMITH�����쵼���� 
SELECT ENAME 
FROM EMP
WHERE EMPNO =(SELECT MGR FROM EMP WHERE ENAME ='SMITH')

--3.��ѯ��˾����Ա������ 
SELECT COUNT(*)
FROM EMP

--4.��ѯ��˾�����нˮ�Ƕ��� 
SELECT MAX(SAL)
FROM EMP

--5.��ѯ��˾��ƽ�������Ƕ��� 
SELECT AVG(COMM)
FROM EMP

--6.��ѯ��˾��������ְ��ʱ�� 
SELECT MAX(HIREDATE)
FROM EMP

--7.��ѯ��˾���н�������� 
SELECT COUNT(*)
FROM EMP
WHERE COMM IS NOT NULL

--8.��ѯ20���ŵ����нˮ�Ƕ��� 
SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO =20

--9.��ѯ����Ա�������а�����A�������нˮ 
SELECT MAX(SAL)
FROM EMP
WHERE ENAME LIKE '%A%'

--10.��ѯ����λ�����нˮ�����нˮ��Ҫ��ֻͳ��нˮ>1000�� 
SELECT MAX(SAL),MIN(SAL)
FROM EMP
WHERE SAL>1000
GROUP BY JOB

--11.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ�г�ƽ��нˮ>2000 
SELECT AVG(SAL),DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)>2000

--12.��ѯ�����ŵ�ƽ��нˮ�����ű�ţ�Ҫ��ֻ��Ա�������а��� 
--��A���Ų���ͳ�ƣ�ֻ�г�ƽ��нˮ>1500�ģ�����ƽ��нˮ�������� 

SELECT AVG(SAL),DEPTNO
FROM EMP
WHERE ENAME LIKE '%A%' 
GROUP BY DEPTNO
HAVING AVG(SAL)>1500

--13.��ѯԱ�����й��ʴ���1600��Ա���������͹��� 
SELECT ENAME , SAL
FROM EMP
WHERE SAL>1600

--14.��ѯԱ������Ա������17��Ա���������Ͳ��ű�� 
SELECT ENAME, DEPTNO
FROM EMP
WHERE EMPNO = 17

--15.ѡ��Ա�����й��ʲ���4000��5000�ڵ�Ա���������͹��� 
SELECT ENAME,SAL
FROM EMP
WHERE SAL NOT BETWEEN 4000 AND 5000

--16.ѡ��Ա��������20��30���Ź�����Ա���������Ͳ��ź� 
SELECT ENAME, DEPTNO
FROM EMP 
WHERE DEPTNO IN (20,30)

--17.ѡ��Ա������û�й����ߵ�Ա��������ְλ����ְλ���� 
SELECT ENAME,JOB,EMPNO
FROM EMP
WHERE JOB NOT IN (SELECT JOB FROM EMP WHERE MGR IN (SELECT MGR FROM EMP WHERE EMPNO IN (SELECT MGR FROM EMP)))
ORDER BY JOB

--18.ѡ��Ա�������н����Ա�����������ʺͽ��𣬰����ʵ������� 
SELECT ENAME,SAL,COMM
FROM EMP
WHERE COMM IS NOT NULL
ORDER BY SAL DESC

--19.ѡ��Ա������Ա�������ĵ�������ĸ��A��Ա������ 
SELECT ENAME
FROM EMP
WHERE ENAME LIKE '__A%'

--20.�г����ű��еĲ������ƺ����ڳ��� 
SELECT LOC
FROM DEPT


--21.��ʾԱ�����еĲ��ظ��ĸ�λjob 
SELECT DISTINCT JOB
FROM EMP

--22.����Ա�����е�Ա��������ְλ��нˮ����֮���ö������ӣ���ͷ��ʾ�ɼ�� 
SELECT '����'+ ENAME+',ְλ'+JOB+',нˮ'+cast(SAL AS nvarchar) as '���' 
FROM EMP


--23.��ѯԱ������Ա���ţ����������ʣ��Լ�������߰ٷ�֮20֮��Ľ�� 
SELECT EMPNO,ENAME,SAL,SAL*1.2
FROM EMP

--24.��ѯԱ���������͹�������
--�����޶�Ϊ�������������1200��
--���Ҳ�ѯ�������ְʱ���������
--����ְ��Ա������ǰ�� 
SELECT ENAME,SAL
FROM EMP
WHERE SAL>1200
ORDER BY HIREDATE

--25.�г�����ACCOUNTING����֮�⻹��ʲô���� 
SELECT DNAME 
FROM DEPT 
WHERE DNAME NOT LIKE'ACCOUNTING'

--26.�ѹ�Ա�����ŷ��飬
--�����нˮ�����ź� 
--Ҫ����˵������еڶ�����ĸ�ǡ�A����Ա���� 
--���Ҳ��ŵ�ƽ��нˮ > 3000,���ղ��ű�ŵ������� 
SELECT MAX(SAL),DEPTNO
FROM EMP
WHERE ENAME NOT LIKE '_A%'
GROUP BY DEPTNO
HAVING AVG(SAL)>1000
ORDER BY DEPTNO DESC
