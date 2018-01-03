--������SQL���������б��ѯ(70��)
--1����ѯȫ��ѧ����ѧ����������
SELECT sno,sname FROM student;

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT s.sname,s.sno,s.sdept FROM student s;

--3����ȫ��ѧ�����������������ݡ�

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.sno  FROM student s INNER JOIN SC sc ON s.sno = sc.sno
AND s.sno =sc.sno;

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT * FROM student 
WHERE sdept = 'CS';

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT sname,sagea FROM student 
WHERE sagea <20;

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT sno FROM SC  
WHERE Grade <60;

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT s.sname,s.sdept,s.sagea FROM student s
WHERE s.sagea BETWEEN 18 AND 20;

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT sname,sdept,sagea FROM student 
WHERE sagea NOT BETWEEN 20 AND 23;

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT sname,ssex FROM student 
WHERE sdept IN('IS','MA','CS');


--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT sname,ssex FROM student 
WHERE sdept NOT IN ('MA','IS');

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT * FROM student 
WHERE sno = 09102040203;

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT sname,sno,ssex FROM student 
WHERE sname LIKE '��%';

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT sname FROM student 
WHERE sname LIKE '��__';

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT sname,sno FROM student 
WHERE sname LIKE '_��%';

--16����ѯ���в��ա��¡���ѧ��������
SELECT sname FROM student 
WHERE sname NOT LIKE '��%';

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT * FROM Course 
WHERE cname = 'DB_Design';

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT sno,cno FROM SC 
WHERE Grade IS NULL;

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT sno,cno FROM SC 
WHERE Grade IS NOT NULL;

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT sno,Grade FROM SC 
WHERE cno = '3'
ORDER BY Grade DESC;

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT * FROM student s 
ORDER BY s.sdept ASC,s.sagea DESC;

--22��	��ѯѧ����������
SELECT COUNT(sno) FROM student;

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(s.sno) FROM student s
WHERE s.sdept = 'MA';

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(sc.Grade) FROM SC sc 
WHERE sc.cno = 1;

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(sc.Grade) FROM SC sc 
WHERE sc.cno = 1;

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT SUM(Grade) FROM SC 
WHERE sno = 200215121;

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT c.cno,COUNT(sc.cno) FROM Course c LEFT JOIN SC sc ON c.cno = sc.cno
GROUP BY sc.cno,c.cno;


--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT sno FROM SC 
GROUP BY sno 
HAVING COUNT(cno)>=3;
