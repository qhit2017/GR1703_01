--1����ѯȫ��ѧ����ѧ����������
SELECT sno , sname  
from student


--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT sname , sno ,  sdept
from student 

--3����ȫ��ѧ�����������������ݡ�
SELECT sname ,2017-sage 
from student

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.sno
from student s INNER JOIN sc c ON c.sno =s.sno 
AND c.sno IS NOT NULL 



--5����ѯ�������ѧϵȫ��ѧ����������
SELECT sname
from student
WHERE sname='�����'




--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT sname , sage
from student 
WHERE sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT sno
from sc
WHERE grade<60


--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT sname,sdept, sage
from student
WHERE sage BETWEEN 18AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT  sname, sdept , sage 
from student
WHERE sage NOT BETWEEN 20AND 23


--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT sname , ssex 
from student
WHERE sdept IN ('��Ϣ','��ѧ','�����')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT sname, ssex 
from student 
WHERE sdept NOT IN ('��Ϣ','��ѧ','�����')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
INNER JOIN course C ON C.Cno=SC.Cno
WHERE S.Sno=09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT S.Sname,S.Sno,S.Ssex 
FROM student S 
WHERE S.Sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT S.Sname 
FROM student S 
WHERE S.Sname LIKE'��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT *
FROM student S 
WHERE S.Sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT *
FROM student S 
WHERE S.Sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT C.Cno,C.Ccredit
FROM course C INNER JOIN sc SC ON C.Cno=SC.Cno
WHERE C.Cname ='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT S.Sno,C.Cname 
FROM student S LEFT JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
AND SC.Grade IS NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT S.Sno,C.Cname 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno
 INNER JOIN course C ON C.Cno=SC.Cno 

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT S.Sno , SC.Grade 
FROM student S INNER JOIN sc SC ON SC.Sno=S.Sno 
   INNER JOIN course C ON C. Cno =SC.Cno 
   AND C.Cno=3
   ORDER BY SC.Grade 

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM student S 
ORDER BY S.Sdept ,S.Sage DESC

--22��	��ѯѧ����������
SELECT COUNT(*)
FROM student 

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND C.Cname ='��ѧ'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(SC.Grade )
FROM student S INNER  JOIN sc SC ON S.Sno = SC.Sno 
		INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno=1
		
		
--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(SC.Grade )
FROM student S INNER JOIN sc SC ON S.Sno=SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno
	AND C.Cno =1

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(C.Ccredit )
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	AND S.Sno =200215121 AND SC.Grade >60

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT COUNT(*) AS'����'
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno 
	INNER JOIN course C ON C. Cno =SC.Cno  
	GROUP BY C.Cno 

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT S.Sno 
FROM student S INNER JOIN sc SC ON S.Sno = SC.Sno
	INNER JOIN course C ON C.Cno=SC.Cno 
	GROUP BY S.Sno 
	HAVING COUNT(*)>3
