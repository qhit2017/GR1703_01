--1	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
--2	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
--3.	�������гɼ���ѧ����ѧ�ź�������
--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
--5.	��ѯѧ����������
--6.	��ѯ������Ů����������
--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
--10.	��ѯƽ���ɼ�����רҵ�����֡�
--11.	��ѯ������Ů����ƽ���ɼ���
--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
--13.	��ѯרҵѧ����������50�˵�רҵ����
--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����

select * from Student2
delete from student2 where Sno=5
insert into Student2 values(1,'����','Ů',18,'�����',100)
insert into Student2 values(2,'����','Ů',17,'����',120)
insert into Student2 values(3,'����','��',18,'�����',10)
insert into Student2 values(4,'����','Ů',13,'�����',50)
insert into Student2 values(5,'��7','��',15,'����',null)
insert into Student2 values(6,'��7','Ů',13,'�����',70)
insert into Student2 values(7,'���','Ů',13,'�����',90)
insert into Student2 values(8,'֣��','��',19,'����',50)
--1	��ѯȱ�ٳɼ���ѧ����ѧ�ź�������
select Sno ,Sname
from Student2
where Grade is null

--2	��ѯÿ��רҵ��ѧ����ƽ���ɼ���
select Sdept, AVG(Grade) as 'ƽ�ַ�'
from Student2
group by Sdept

--3.	�������гɼ���ѧ����ѧ�ź�������
select Sno,Sname
from Student2
where Grade is not null

--4.	��ѯȫ��ѧ���������ѯ���������ϵ�������У�ͬһϵ�е�ѧ�������併�����С�
select *
from Student2
order by Sdept ,Sage desc

--5.	��ѯѧ����������
select COUNT(*) as '������' 
from Student2

--6.	��ѯ������Ů����������
select Ssex, COUNT(*) as '����'
from Student2
group by Ssex

--7.	��ѯÿ��רҵ��ƽ���ɼ���������ճɼ��������С�
select Sdept, AVG(Grade) as'ƽ���ɼ�'
from Student2
group by Sdept
order by AVG(Grade) 

--8.	��ѯÿ��רҵ�гɼ���õ�ѧ���ɼ���
select Sdept ,MAX(Grade) as '��߷�'
from Student2
group by Sdept

--9.	��ѯÿ��רҵ�гɼ�����ѧ���ɼ���
select Sdept ,MIN(Grade) '��ͷ�'
from Student2
group by Sdept

--10.	��ѯƽ���ɼ�����רҵ�����֡�
select top 1 Sdept,AVG(Grade) 
from Student2 group by Sdept
order by avg(Grade)

--11.	��ѯ������Ů����ƽ���ɼ���
select Ssex,AVG(Grade) as 'ƽ���ɼ�'
from Student2
group by Ssex

--12.	��ѯ�ɼ�����ƽ���ɼ���ѧ�������ͳɼ���
select Sname,Grade
from Student2
where Grade>(select AVG(Grade)from Student2)
Group by Sdept ,Sname,Grade

--13.	��ѯרҵѧ����������50�˵�רҵ����
select Sdept from Student2 group by Sdept having COUNT(Sno)>10

--14.	��ѯ���������רҵδ����ѧ����ƽ���ɼ���רҵ����
select Sdept ,AVG(Grade)from Student2 where Sno in (
	select Sno from Student2 where Sdept='�����' and Sage<18
)
group by Sdept

