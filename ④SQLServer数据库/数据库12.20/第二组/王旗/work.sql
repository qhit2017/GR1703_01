SELECT * FROM student
DELETE FROM student
INSERT INTO student (no,name,sex,age,dept)VALUES('01','�����','��',20,'�����');
INSERT INTO student VALUES ('02','��ӯӯ','Ů',19,'���',99);
INSERT INTO student VALUES ('03','������','��',45,'����',68);
INSERT INTO student VALUES ('04','�ﲮ��','��',34,'�ƾ�',30);
INSERT INTO student VALUES ('05','����','Ů',18,'���',91);
INSERT INTO student VALUES ('06','����Ⱥ','��',44,'�ƾ�',93);
INSERT INTO student VALUES ('07','������','Ů',15,'�����',95);


--1.	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
SELECT a.no,a.name
from student a
where grade is NULL
--2.	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
SELECT a.dept,AVG(a.grade) as 'ƽ���ɼ�'
from student a
GROUP BY a.dept
--3.	�������гɼ���ѧ����ѧ�ź�������
SELECT a.no,a.name
from student a
WHERE a.grade is NOT NULL
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
select *
from student a
ORDER BY a.dept,a.age
--5.	��ѯѧ����������
SELECT count(*) as '������'
from student 
--6.	��ѯ������Ů����������
SELECT a.sex ,count(*) as '����'
from student a
GROUP BY a.sex
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
SELECT a.dept,AVG(a.grade)
from student a
group BY a.dept 
ORDER BY AVG(a.grade)DESC
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
SELECT a.dept,MAX(a.grade)
from student a
GROUP BY a.dept
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
SELECT a.dept,MIN(a.grade)
from student a
GROUP BY a.dept
--10.	��ѯƽ���ɼ�����רҵ�����֡�
SELECT top 1 a.dept
from student a
group BY a.dept
ORDER BY AVG(a.grade)
--11.	��ѯ������Ů����ƽ���ɼ�
SELECT a.sex,AVG(a.grade) as '�ɼ�'
from student a
group BY a.sex
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���

--13.	��ѯרҵѧ����������50�˵�רҵ����

--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
SELECT a.name,a.dept
from student a

WHERE a.age<16AND a.dept='�����'








