SELECT * FROM student
INSERT INTO student VALUES ('01','����','��',18,'�����',30);
INSERT INTO student (no,name,sex,age,grade) VALUES ('02','����','��',19,20);
INSERT INTO student VALUES ('03','����','��',17,'�����',90);
INSERT INTO student VALUES ('04','����','Ů',20,'���',85);
INSERT INTO student VALUES ('05','����','Ů',15,'���',83);
INSERT INTO student VALUES ('06','����','��',14,'԰��',60);
INSERT INTO student VALUES ('09102040203','��ϵ','��',23,'԰��',65);
DELETE FROM student
--1.	��ѯȫ��ѧ����ѧ����������
SELECT * FROM student
--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
SELECT a.name,a.no,a.dept
from student a
--3.	��ȫ��ѧ���������������䡣
SELECT b.name,b.age
from student b
--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
SELECT *
from student c  WHERE c.dept='�����'
--5.	��ѯ����������20�����µ�ѧ�������������䡣
SELECT d.name,d.age
from student d WHERE d.age<20
--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
SELECT f.name,f.age,f.grade
from student f WHERE f.age<16 ORDER BY f.age
--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
SELECT e.no
from student e WHERE e.grade<60 ORDER BY e.grade DESC
--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
SELECT f.name,f.dept,f.age
from student f WHERE f.age>=18 AND f.age<=22
--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
SELECT g.name,g.dept,g.age
from student g WHERE NOT (g.age>=20 AND g.age<=23)
--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
SELECT h.name,h.sex
from student h WHERE h.dept='�����' OR h.dept='��Ϣϵ' OR h.dept='��ѧϵ'
--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
SELECT  name,sex
from student where NOT (dept='��Ϣϵ' OR dept='��ѧϵ' OR dept='�����')
--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
SELECT * 
from student WHERE no='09102040203'
--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
SELECT name,no,sex
from student  WHERE name LIKE '��%'
--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
SELECT name
from student WHERE name LIKE '��__'
--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
SELECT name,no
from student where name LIKE '_��%'
--16.	��ѯ���в��ա��¡���ѧ��������
SELECT name
from student WHERE name not LIKE '��%'

