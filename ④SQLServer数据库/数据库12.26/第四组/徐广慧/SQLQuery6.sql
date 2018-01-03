 
INSERT INTO Student VALUES (200215121,'����','��',20,'CS')
INSERT INTO Student VALUES (200215122,'����','Ů',19,'CS')
INSERT INTO Student VALUES (200215123,'����','Ů',18,'MA')
INSERT INTO Student VALUES (200215125,'����','��',19,'IS')

INSERT INTO course VALUES (1,'���ݿ�',4)
INSERT INTO course VALUES (2,'��ѧ',2)
INSERT INTO course VALUES (3,'��Ϣϵͳ',4)
INSERT INTO course VALUES (4,'����ϵͳ',3)
INSERT INTO course VALUES (5,'���ݽṹ',4)
INSERT INTO course VALUES (6,'���ݴ���',2)
INSERT INTO course VALUES (7,'PASCAL����',4)

INSERT INTO SC VALUES (200215121,1,92)
INSERT INTO SC VALUES (200215121,2,85)
INSERT INTO SC VALUES (200215121,3,88)
INSERT INTO SC VALUES (200215122,2,90)
INSERT INTO SC VALUES (200215122,3,80)
--1����ѯȫ��ѧ����ѧ����������
SELECT a.Sno,a.Sname 
from Student a





--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT a.Sname,a.Sno,a.Sdept
from Student  a




--3����ȫ��ѧ�����������������ݡ�
SELECT a.Sname,a.Sage
from Student a

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT  a.Sno
from Student a INNER JOIN sc b ON a.Sno=b.Sno





--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from Student a
where a.Sdept='CS'


--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT *
FROM Student a
where a.Sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT a.Sno
from Student a INNER JOIN SC b ON a.Sno=b.Sno
WHERE b.Grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT a.Sname,a.Sdept,a.Sage
from Student a
WHERE a.Sage BETWEEN 18AND 22



--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT a.Sname,a.Sdept,a.Sage
from Student a
where a.Sage  NOT  BETWEEN 20AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT a.Sname,a.Ssex
from Student a
where a.Sdept='IS' or a.Sdept='MA' or a.Sdept= 'CS'

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT a.Sname,a.Ssex
from Student a
where  a.Sdept!='IS' and a.Sdept!='MA' AND  a.Sdept!= 'CS'

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
FROM Student a
WHERE a.Sno=09102040203

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT a.Sname,a.Sno,a.Ssex
from Student a
WHERE a.Sname LIKE '��%'


--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT *
from Student a
WHERE a.Sname LIKE  '��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT *
FROM Student a 
WHERE a.Sname LIKE '������%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT *
FROM Student a 
WHERE a.Sname not LIKE '��%'


--17����ѯ���ݿ�γ̵Ŀγ̺ź�ѧ�֡�
SELECT *
FROM course a
WHERE a.CName='���ݿ�'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT *
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE b.Grade IS NULL 




--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT *
from SC a
WHERE a.Grade!=0



--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT *
from SC a 
WHERE a.Cno=3
ORDER BY a.Grade DESC
--21��	��ѯȫ��ѧ���������ѯ���������ϵ���������У�ͬһϵ�е�ѧ�������併�����С�
SELECT *
FROM Student a

ORDER BY a.Sdept ASC ,a.Sage DESC





--22��	��ѯѧ����������
SELECT COUNT(a.Sname) 
from Student a



--23��	��ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*) 
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE c.CName='��ѧ'




--24��	����1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(*) 
from SC a
WHERE a.Cno=1


--25��	��ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(a.Cno) 
from SC a
where a.Cno=1
--26��	��ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT	SUM(c.Ccredit) 
FROM Student a INNER JOIN SC b ON a.Sno=b.Sno  INNER JOIN course c ON c.Cno=b.Cno
WHERE a.Sno=200215121

--27��	������γ̺ż���Ӧ��ѡ��������
SELECT COUNT(*) 
from SC a INNER JOIN course b ON a.Cno=b.Cno
GROUP BY b.Ccredit


--28��	��ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT a.Sno
from SC a
GROUP BY a.Sno
HAVING COUNT(a.Cno)>3 



