SELECT *FROM Course 
SELECT * FROM SC 
SELECT * FROM Student
UPDATE Student SET Sdept ='�������ѧϵ' WHERE Sno ='101'
--1����ѯȫ��ѧ����ѧ����������
SELECT a.Sno ,a.Sname
FROM Student a 
--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.Sname,a.Sno ,a.Sdept
FROM Student a 
--3����ȫ��ѧ�����������������ݡ�
SELECT a.Sname ,(2017-a.Sage) AS '�������' 
FROM Student a
--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT a.Sno
FROM SC a
where a.Cno IS NOT NULL 
--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
FROM Student a
where a.Sdept LIKE '�������ѧϵ'
--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT a.Sname ,a.Sage
FROM Student a
WHERE a.Sage <'20'
--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT a.Sno
FROM SC a
WHERE a.Grade <'60'
--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.Sname ,a.Sdept ,a.Sage
FROM Student a 
WHERE a.Sage BETWEEN 18 AND 22
--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.Sname ,a.Sdept ,a.Sage
FROM Student a 
WHERE a.Sage NOT BETWEEN 20 AND 23
--10����ѯ��Ϣϵ��IS������Ϣϵ��MA������Ϣϵ��CS��ѧ�����������Ա�
SELECT a.Sname ,a.Ssex
FROM Student a
where a.Sdept LIKE 'MA' OR a.Sdept LIKE 'IS' OR a.Sdept LIKE 'CS'
--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.Sname ,a.Ssex
FROM Student a
where  a.Sdept NOT IN ('�������ѧϵ','��Ϣϵ','��Ϣϵ')
--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM Student a INNER JOIN SC b ON a.Sno LIKE b.Sno
where a.Sno LIKE '101'
--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname ,a.Sno ,a.Ssex
FROM Student a
where a.Sname LIKE 'Ǯ%'
--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT a.Sname
FROM Student a
where a.Sname LIKE '��__'
--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.Sname,a.Sno
FROM Student a
where a.Sname LIKE '_��%'
--16����ѯ���в��ա��¡���ѧ��������
SELECT a.Sname
FROM Student a
where a.Sname NOT LIKE '��%'
--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT a.Cno ,a.Ccredit
FROM Course a
where a.CName LIKE 'DB_Design'
--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT a.Sno ,a.Cno
FROM SC a
where a.Grade IS NULL
--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT a.Sno ,a.Cno
FROM SC a
where a.Grade IS  NOT NULL
--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT a.Sno ,a.Grade
FROM SC a
where a.Cno LIKE '3'
ORDER BY a.Grade DESC
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM Student a
ORDER BY a.Sdept, a.Sage DESC
--22��	��ѯѧ����������
SELECT COUNT(*)AS '������' 
FROM Student 
--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)AS'ѡ������ѧ�γ̵�ѧ������' 
FROM SC a
where a.Cno IN (SELECT b.Cno FROM Course b WHERE b.CName LIKE '��ѧ')
--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(a.Grade)AS'ƽ���ɼ�' 
FROM SC a
where a.Cno LIKE '1'
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT max(a.Grade)AS'��߳ɼ�' 
FROM SC a
where a.Cno LIKE '1'
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(a.Grade) 
FROM SC a
where a.Sno LIKE '101' 
--27��	������γ̺ż���Ӧ��ѡ��������
SELECT a.Cno ,COUNT(a.Sno)AS '����'  
FROM SC a
group BY a.Cno
--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.Sno,a.Sno
FROM SC a
GROUP BY a.Sno,a.Cno
HAVING COUNT(a.Cno)>3 