
insert into Student2 (Sname,Sno,Sage)values('�����',1,20)

--1.	��ѯȫ��ѧ����ѧ����������
select a.Sno,a.Sname
from Student2 a

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ��
select a.Sname,a.Sno,a.Sdept
from Student2 a

--3.	��ȫ��ѧ���������������䡣
select Sname ,Sage
from Student2

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select Sname
from Student2 where Sdept ='�������ѧ'


--5.	��ѯ����������20�����µ�ѧ�������������䡣
select Sname ,Sage
from Student2 where Sage<20

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
select Sname,Sage,Grade
from Student2 where Sage<18 
order by Grade asc

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select Sno
from Student2 where Grade <60
order by Grade desc

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select Sname ,Sdept,Sage
from Student2 where Sage>=18 and Sage<=22

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select Sname,Sdept,Sage
from Student2 where Sage<20 and Sage>23

---10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select Sname ,Ssex
from Student2 
where Sdept='��Ϣ'  or Sdept ='��ѧ' or Sdept = '�������ѧ'

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select Sname,Sage
from Student2
where Sdept!='��Ϣ' and Sdept!='��ѧ'and Sdept!='�������ѧ'

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����
select * 
from Student2 where Sno=09102040203

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select Sname ,Sno ,Ssex
from Student2 
where Sname like '��%%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������
select Sname
from Student2
where Sname like '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select Sname ,Sno
from Student2
where Sname like '_��%'

--16.	��ѯ���в��ա��¡���ѧ��������
select Sname
from Student2
where Sname  not like '��%%'