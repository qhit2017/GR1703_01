
INSERT INTO student VALUES(200215121,'����','��',20,'cs');
INSERT INTO student VALUES(200215122,'����','Ů',19,'cs');
INSERT INTO student VALUES(200215123,'����','Ů',18,'ma');
INSERT INTO student VALUES(200515125,'����','��',19,'is');


SELECT * FROM student


INSERT INTO course VALUES(1,'���ݿ�',4);
INSERT INTO course VALUES(2,'��ѧ',2);
INSERT INTO course VALUES(3,'��Ϣϵͳ',4);
INSERT INTO course VALUES(4,'����ϵͳ',3);
INSERT INTO course VALUES(5,'���ݽṹ',4);
INSERT INTO course VALUES(6,'���ݴ���',2);
INSERT INTO course VALUES(7,'PASCAL����',4);

INSERT INTO sc VALUES (200215121,1,92);
INSERT INTO sc VALUES (200215121,2,85);
INSERT INTO sc VALUES (200215121,3,88);
INSERT INTO sc VALUES (200215122,2,90);
INSERT INTO sc VALUES (200215122,3,80);

--1����ѯȫ��ѧ����ѧ����������
SELECT a.sno,a.sname 
from student a

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.sname,a.sno,a.sdept
from student a

--3����ȫ��ѧ�����������������ݡ�
SELECT a.sname,a.sage
from student a

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT a.sno
from student a
WHERE a.sdept IS NOT NULL 

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from student a
where a.sdept='cs'

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT a.sname,a.sage
from student a
where a.sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT a.sno
from sc a 
WHERE a.grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.sname,a.sdept,a.sage
from student a
where a.sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.sname,a.sdept,a.sage
from student a
where a.sage NOT BETWEEN 18 AND 22

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.sdept,a.sname,a.ssex
from student a
GROUP BY a.sdept,a.sname,a.ssex

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.sname,a.ssex,a.sdept
from student a
WHERE a.sdept NOT in ('is','ma','cs')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from student a
where a.sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.sname,a.sno,a.ssex
from student a
where a.sname LIKE '��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������	 
SELECT a.sname
from student a
WHERE a.sname LIKE '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT a.sname,a.sno
from student a
where a.sname LIKE '_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT a.sname
from student a
where a.sname NOT LIKE '��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT a.cno,a.ccredit
from course a
where a.cname ='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼��
--    ��û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT  a.sno,a.cno
from sc a
WHERE a.grade IS NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�      
SELECT a.sno,a.cno
from sc a
where a.grade IS NOT NULL

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT a.sno,a.grade
from sc a
WHERE a.cno=3
ORDER BY a.grade DESC

--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�	
--      ͬһϵ�е�ѧ�������併�����С�
SELECT *
from student a
ORDER BY a.sdept ASC ,a.sage DESC

--22��	��ѯѧ����������
SELECT COUNT(*) as '������'
from student a

--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT count(*)
from  course a
where a.cname='��ѧ'

--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT avg(a.grade) as 'ƽ���ɼ�'
from sc a
WHERE a.cno=1

--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT max(a.grade) as '��߷���'
from sc a
where a.cno=1

--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT sum(c.ccredit) as '��ѧ����'
from sc o INNER JOIN course c ON o.cno=c.cno
AND o.sno='200215121'

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT a.cno, COUNT(a.sno) as 'ѡ������'
from sc a
GROUP BY a.cno

--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.sno
from sc a
GROUP BY a.sno
HAVING count(a.cno)>3                                                                                                                                                                                                                                                                   
