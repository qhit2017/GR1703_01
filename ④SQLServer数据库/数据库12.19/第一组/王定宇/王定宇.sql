insert into student values(09102040203,'����','��',18,'�������ѧ',70);
insert into student values(01244421145,'����','��',17,'��ѧ',80);
insert into student values(02344541146,'С��','Ů',20,'��Ϣ',90);
insert into student values(01232426666,'�Ƕ�����˹','��',30,'��Ϣ',55);
insert into student values(01234412444,'��˹','��',18,'��ѧ',10);
insert into student values(01234545477,'��С��','��',20,'�������ѧ',11);
insert into student values(01234521111,'����','��',33,'��ѧ',20);

delete  from student

--1.	��ѯȫ��ѧ����ѧ����������
select * 
from student;

--2.	��ѯȫ��ѧ����������ѧ�š�רҵ
select a.sname,a.Sno,a.sdept
from student a;

--3.	��ȫ��ѧ���������������䡣
select b.sname,b.sage
from student b;

--4.	��ѯ���������ѧ��רҵȫ��ѧ����������
select *
from student c
where c.sdept='�������ѧ';

--5.	��ѯ����������20�����µ�ѧ�������������䡣
select d.sname,d.sage
from student d
where d.sage<20;

--6.	��ѯδ�����ѧ�������������䡢�ɼ��������ճɼ�����
select e.sname,e.sage,e.grade
from student e
order by e.grade;

--7.	��ѯ�ɼ��в������ѧ����ѧ�ţ������ճɼ��������С�
select f.Sno
from student f
order by f.grade desc;

--8.	��ѯ������18~22�꣨����18���22�֮꣩���ѧ����������רҵ�����䡣
select g.sname,g.sdept,g.sage
from student g
where (g.sage>=18 and g.sage<=22);

--9.	��ѯ���䲻��20~23��֮���ѧ��������רҵ�����䡣
select h.sname,h.sdept,h.sage
from student h
where (h.sage<20 or h.sage>23);

--10.	��ѯ��Ϣϵ��IS������ѧϵ��MA���ͼ������ѧϵ��CS��ѧ�����������Ա�
select i.sname,i.ssex
from student i
where i.sdept='��Ϣ' or i.sdept='��ѧ' or i.sdept='�������ѧ';

--11.	��ѯ�Ȳ�����Ϣϵ����ѧϵ��Ҳ���Ǽ������ѧϵ��ѧ�����������Ա�
select j.sname,j.ssex
from student j
where j.sdept!='��Ϣ' and j.sdept!='��ѧ' and j.sdept!='�������ѧ';

--12.	��ѯѧ��Ϊ09102040203��ѧ������ϸ�����  XX
select *
from student k
where k.Sno='09102040203'

--13.	��ѯ�����ա��š�ѧ����������ѧ�ź��Ա�
select l.sname,l.Sno,l.ssex
from student l
where l.sname like '��%'

--14.	��ѯ�ա����ȫ��Ϊ�������ֵ�ѧ����������XX
select m.sname
from student m
where m.sname like '��__'

--15.	��ѯ�����е�2����Ϊ�������ֵ�ѧ����������ѧ�š�
select n.sname,n.Sno
from student n
where n.sname like '_��%'

--16.	��ѯ���в��ա��¡���ѧ�������� 
select o.sname
from student o
where o.sname not like'��%'

