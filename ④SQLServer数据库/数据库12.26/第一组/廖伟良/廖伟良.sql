CREATE table Student(
Sno char(11),
Sname char(20),
Ssex char(2),
Sage smallint,
Sdept char(20))

CREATE table Course(
Cno char(4),
Cname char(20),
Ccredit smallint)

CREATE table SC(
Sno char(11),
Cno char(4),
Grade smallint)

INSERT INTO Student VALUES(200215121,'��','��',20,'CS')
INSERT INTO Student VALUES(200215122,'��','��',19,'MA')
INSERT INTO Student VALUES(200215123,'��','��',18,'IS')
INSERT INTO Student VALUES(200215124,'��','��',17,'CS')
INSERT INTO Student VALUES(200215125,'��','��',19,'IS')
INSERT INTO Student VALUES(200215126,'��','��',20,'MA')
INSERT INTO Student VALUES(200215127,'��','��',21,'IS')
INSERT INTO Student VALUES(200215128,'��','��',16,'CS')
INSERT INTO Student VALUES(200215129,'��','��',15,'MA')
INSERT INTO Student VALUES(200215130,'��','��',19,'CS')
INSERT INTO Student VALUES(200215131,'��һ','��',16,'I')
INSERT INTO Student VALUES(200215132,'��һ','��',18,'MA')
INSERT INTO Student VALUES(200215133,'��һ','��',18,'IS')
INSERT INTO Student VALUES(200215134,'��һ','��',17,'CS')
INSERT INTO Student VALUES(200215135,'��һ','��',16,'CS')
INSERT INTO Student VALUES(200215136,'��һ','Ů',20,'IS')
INSERT INTO Student VALUES(200215137,'��һ','Ů',18,'MA')
INSERT INTO Student VALUES(200215138,'��һ','Ů',21,'MA')
INSERT INTO Student VALUES(200215139,'��һ','Ů',17,'MA')
INSERT INTO Student VALUES(200215140,'��һ','Ů',18,'IS')
INSERT INTO Student VALUES(200215141,'�׶�','Ů',17,'CS')
INSERT INTO Student VALUES(200215142,'�Ҷ�','Ů',20,'CS')
INSERT INTO Student VALUES(200215143,'����','Ů',17,'CS')
INSERT INTO Student VALUES(200215144,'����','Ů',19,'IS')
INSERT INTO Student VALUES(200215145,'���','Ů',21,'MA')

INSERT INTO Course VALUES(1,'���ݿ�',4)
INSERT INTO Course VALUES(2,'��ѧ',2)
INSERT INTO Course VALUES(3,'��Ϣϵͳ',4)
INSERT INTO Course VALUES(4,'����ϵͳ',3)
INSERT INTO Course VALUES(5,'���ݽṹ',4)
INSERT INTO Course VALUES(6,'���ݴ���',2)
INSERT INTO Course VALUES(7,'PASCAL����',4)
INSERT INTO Course VALUES(8,'JAVA',3)
INSERT INTO Course VALUES(9,'HTML',4)
INSERT INTO Course VALUES(10,'�������ѧ',1)

INSERT INTO SC VALUES(200215121,1,92)
INSERT INTO SC VALUES(200215122,2,82)
INSERT INTO SC VALUES(200215123,3,87)
INSERT INTO SC VALUES(200215124,4,86)
INSERT INTO SC VALUES(200215125,5,92)
INSERT INTO SC VALUES(200215126,6,88)
INSERT INTO SC VALUES(200215127,7,76)
INSERT INTO SC VALUES(200215128,8,77)
INSERT INTO SC VALUES(200215129,9,81)
INSERT INTO SC VALUES(200215130,10,82)
INSERT INTO SC VALUES(200215131,1,83)
INSERT INTO SC VALUES(200215132,2,84)
INSERT INTO SC VALUES(200215133,3,74)
INSERT INTO SC VALUES(200215134,4,85)
INSERT INTO SC VALUES(200215135,5,86)
INSERT INTO SC VALUES(200215136,6,76)
INSERT INTO SC VALUES(200215137,7,73)
INSERT INTO SC VALUES(200215138,8,72)
INSERT INTO SC VALUES(200215139,9,71)
INSERT INTO SC VALUES(200215140,10,81)
INSERT INTO SC VALUES(200215141,1,91)
INSERT INTO SC VALUES(200215142,2,82)
INSERT INTO SC VALUES(200215143,3,92)
INSERT INTO SC VALUES(200215144,4,93)
INSERT INTO SC VALUES(200215145,5,94)

--1����ѯȫ��ѧ����ѧ����������
SELECT Sno,Sname
from Student

--2����ѯȫ��ѧ����������ѧ�š�����ϵ��
SELECT Sname,Sno,Sdept
from Student

--3����ȫ��ѧ������������������???��
SELECT Sname
from Student

--4����ѯѡ���˿γ̵�ѧ��ѧ�ţ�����ѡ�޼�¼����
SELECT s.Sno
from Student s LEFT JOIN SC sc ON s.Sno=sc.Sno
AND sc.Cno IS NOT NULL

--5����ѯ�������ѧϵȫ��ѧ����������
SELECT *
from Student
WHERE Sdept='cs'
 

--6����ѯ����������20�����µ�ѧ�������������䡣
SELECT Sname,Sage
from Student
WHERE Sage<20

--7����ѯ���Գɼ��в������ѧ����ѧ�š�
SELECT s.Sno
from Student s INNER JOIN SC sc
ON s.Sno=sc.Sno
AND sc.Grade<60

--8����ѯ������18~22�꣨����18���22�֮꣩���ѧ����������ϵ�������
SELECT Sname,Sdept,Sage
from Student
WHERE Sage BETWEEN 18 AND 22

--9����ѯ���䲻��20~23��֮���ѧ��������ϵ�������
SELECT Sname,Sdept,Sage
from Student
WHERE Sage NOT BETWEEN 20 AND 23

--10����ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT Sname,Ssex
from Student
WHERE Sdept IN('IS','MA','CS')

--11����ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT Sname,Ssex
from Student
WHERE Sdept NOT IN('IS','MA','CS')

--12����ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT *
from Student
WHERE Sno='09102040203'

--13����ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT Sname,Sno,Ssex
from Student
WHERE Sname LIKE'��%'

--14����ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT Sname
from Student
WHERE Sname LIKE'��__'

--15����ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT Sname,Sno
from Student
WHERE Sname LIKE'_��%'

--16����ѯ���в��ա��¡���ѧ��������
SELECT Sname
from Student
WHERE Sname NOT LIKE'��%'

--17����ѯDB_Design�γ̵Ŀγ̺ź�ѧ�֡�
SELECT Cno,Ccredit
from Course
WHERE Cname='DB_Design'

--18��ĳЩѧ��ѡ�޿γ̺�û�вμӿ��ԣ�������ѡ�μ�¼����û�п��Գɼ�����ѯȱ�ٳɼ���ѧ����ѧ�ź���Ӧ�Ŀγ̺š�
SELECT Sno,Cno
from SC
WHERE Grade IS NULL

--19���������гɼ���ѧ��ѧ�źͿγ̺š�
SELECT Sno,Cno
from SC
WHERE Grade IS NOT NULL

--20����ѯѡ����3�ſγ̵�ѧ����ѧ�ż���ɼ�����ѯ����������������С�
SELECT Sno,Grade
from SC
WHERE Cno=3
ORDER BY Grade desc

--21����ѯȫ��ѧ���������ѯ���������ϵ��(???)�������У�ͬһϵ(???)�е�ѧ�������併�����С�
SELECT *
FROM Student
ORDER BY Sage DESC

--22����ѯѧ����������
SELECT COUNT(*) AS '������'
FROM Student

--23����ѯѡ������ѧ�γ̵�ѧ��������
SELECT COUNT(*)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
and c.Cname='��ѧ'

--24������1�ſγ̵�ѧ��ƽ���ɼ���
SELECT AVG(Grade)
from SC
WHERE Cno=1

--25����ѯѡ��1�ſγ̵�ѧ����߷�����
SELECT MAX(Grade)
from SC
WHERE Cno=1

--26����ѯѧ��Ϊ200215121��ѧ��ѡ�޿γ̵���ѧ������
SELECT sum(c.Ccredit)
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
AND s.Sno=200215121

--27��������γ̺ż���Ӧ��ѡ��������
SELECT c.Cno,COUNT(*) as 'ѡ������'
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY c.Cno

--28����ѯѡ����3�����Ͽγ̵�ѧ��ѧ�š�
SELECT s.Sno
from SC sc  INNER JOIN Course c ON sc.Cno= c.Cno
INNER JOIN Student s ON s.Sno=sc.Sno
GROUP BY s.Sno
having COUNT(sc.Cno)>3